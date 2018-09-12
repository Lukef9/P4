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

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      games: [],
      platforms: [],
      categories: [],
      gameModes: [],
      users: [],
      platformGames: [],
    }
    this.addGameModes = this.addGameModes.bind(this);
    this.addPlatforms = this.addPlatforms.bind(this);
    this.addCategories = this.addCategories.bind(this);
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

  getAllGamesOnOnePlatform(id) {
    return fetchAllGamesOnOnePlatform(id).then(data => {
      return{ platformGames:  data.games };
    })
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

  render() {
    
    return (
      <div className="App">
          <GamesByCat 
          categories = {this.state.categories}
          addGameModes = {this.addGameModes}
          addPlatforms = {this.addPlatforms}
          addCategories = {this.addCategories}
          />
          <GamesByPlat 
          platforms = {this.state.platforms}
          addGameModes = {this.addGameModes}
          addPlatforms = {this.addPlatforms}
          addCategories = {this.addCategories}
          />
      </div>
    );
  }
}

export default App;
