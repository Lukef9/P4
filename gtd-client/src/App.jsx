import React, { Component } from 'react';
import { 
  fetchAllGames,
  fetchAllPlatforms,
  fetchAllCategories,
  fetchAllGameModes,
  fetchAllUsers,
  fetchOneUser,
  destroyUser,
  updateUser,
  saveUser,
  fetchAllGamesOnOnePlatform
} from './services/api';
import './App.css';
import GamesByCat from './GamesByCat';
import GamesByPlat from './GamesByPlat';
import GamesByGameMode from './GamesByGameMode';
import Header from './Header';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      games: [],
      platforms: [],
      categories: [],
      gameModes: [],
      users: [],
      currentPage: 'home',
    }
    this.addGameModes = this.addGameModes.bind(this);
    this.addPlatforms = this.addPlatforms.bind(this);
    this.addCategories = this.addCategories.bind(this);
    this.toggleCurrentPage = this.toggleCurrentPage.bind(this);
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
    return (this.state.games.length >= 98 && game.id <100) ? `Platforms: ${this.state.games[game.id-1].platforms.map(plats => ` ` + plats.platform_name)}` : ''
  }
  addGameModes(game) {
    return (this.state.games.length >= 98 && game.id <100) ? `Game Modes: ${this.state.games[game.id-1].game_modes.map(gms => ` ` + gms.game_mode_name)}` : ''
  }
  addCategories(game) {
    return (this.state.games.length >= 98 && game.id <100) ? `Categories: ${this.state.games[game.id-1].categories.map(cats => ` ` + cats.category_name)}` : ''
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
