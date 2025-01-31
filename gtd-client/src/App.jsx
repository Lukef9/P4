import React, { Component } from 'react';
import { 
  fetchAllGames,
  fetchAllPlatforms,
  fetchAllCategories,
  fetchAllGameModes,
  fetchAllUsers,
  destroyUser,
  updateUser,
  saveUser,
} from './services/api';
import './App.css';
import GamesByCat from './GamesByCat';
import GamesByPlat from './GamesByPlat';
import GamesByGameMode from './GamesByGameMode';
import Header from './Header';
import LoginForm from './LoginForm';
import Users from './Users';
import Register from './Register';
import EditUser from './EditUser';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      games: [],
      platforms: [],
      categories: [],
      gameModes: [],
      users: [],
      currUser: {},
      currentPage: 'platform',
    }
    this.addGameModes = this.addGameModes.bind(this);
    this.addPlatforms = this.addPlatforms.bind(this);
    this.addCategories = this.addCategories.bind(this);
    this.toggleCurrentPage = this.toggleCurrentPage.bind(this);
    this.createUser = this.createUser.bind(this);
    this.editUser = this.editUser.bind(this);
    this.handleEdit = this.handleEdit.bind(this);
    this.destroyUser = this.destroyUser.bind(this);
  }

  componentDidMount() {
    fetchAllGames().then(data => {
      this.setState({ games:  data.games });
    }).then(() => 

    fetchAllPlatforms().then(data => {
      this.setState({ platforms:  data.platforms });
    })).then(()=> 

    fetchAllCategories().then(data => {
      this.setState({ categories:  data.categories });
    })).then(()=> 

    fetchAllGameModes().then(data => {
      this.setState({ gameModes:  data.game_modes });
    })).then(()=> 

    fetchAllUsers().then(data => {
      this.setState({ users:  data.users });
    }))
  }

  addPlatforms(game) {
    return (this.state.games.length >= 98) ? <div><strong><u>Platforms:</u></strong><br/>{this.state.games[game.id-1].platforms.map(plats => <div key={plats.id}> {plats.platform_name} <br/></div>)}</div> : ''
  }
  addGameModes(game) {
    return (this.state.games.length >= 98) ? <div><strong><u>Game Modes:</u></strong><br/>{this.state.games[game.id-1].game_modes.map(gms => <div key={gms.id}> {gms.game_mode_name}<br/></div>)}</div>: ''
  }
  addCategories(game) {
    return (this.state.games.length >= 98) ? <div><strong><u>Categories: </u></strong><br/>{this.state.games[game.id-1].categories.map(cats => <div key={cats.id}> {cats.category_name}<br/></div>)}<br/></div> : ''
  }
  handleEdit(evt) {
    evt.preventDefault();
    const result = this.state.users.filter(user => user.id === parseInt(evt.target.value));
    this.setState({
      currUser: result[0]
    })
    this.setState({currentPage: 'edit'})
  }
  createUser(user) {
    saveUser(user).then(() => fetchAllUsers().then(data => {
      this.setState({ 
        users:  data.users,
        currentPage: 'profile'
      })
    }))
  }

  editUser(user) {
    updateUser(user)
    .then(() => fetchAllUsers())
	  .then(data => this.setState({
		users: data.users,
		currentPage: 'profile'
    }));
  }
  destroyUser(e) {
    destroyUser(e.target.value).then(() => fetchAllUsers()).then(data => {
      this.setState({ 
        users:  data.users,
        currentPage: 'profile'
      })
    })
  }

  choosePage() {
    const { currentPage } = this.state;
    switch (currentPage) {
      case 'gameMode':
        return <GamesByGameMode
        gameModes = {this.state.gameModes}
        addGameModes = {this.addGameModes}
        addPlatforms = {this.addPlatforms}
        addCategories = {this.addCategories}
        />
      case 'category':
        return <GamesByCat 
        categories = {this.state.categories}
        addGameModes = {this.addGameModes}
        addPlatforms = {this.addPlatforms}
        addCategories = {this.addCategories}
        />
      case 'platform':
        return <GamesByPlat 
        platforms = {this.state.platforms}
        addGameModes = {this.addGameModes}
        addPlatforms = {this.addPlatforms}
        addCategories = {this.addCategories}
        />
      case 'profile':
        return <Users
        handleEdit = {this.handleEdit}
        handleDestroy = {this.destroyUser}
        users = {this.state.users}
        />
      case 'login':
        return <LoginForm 
        />
      case 'register':
        return <Register
        onSubmit = {this.createUser}
        />
      case 'edit':
        return <EditUser
        onSubmit = {this.editUser}
        currUser = {this.state.currUser}
        />
    }
  }

  toggleCurrentPage(evt) {
    const name = evt.target.name;
    this.setState((prevState) => {
      prevState.currentPage = name;
      return prevState;
    });
  }

  render() {
    
    return (
      <div className="App">
        <Header 
        toggleCurrentPage = {this.toggleCurrentPage}
        />
        {this.choosePage()}
      </div>
    );
  }
}

export default App;
