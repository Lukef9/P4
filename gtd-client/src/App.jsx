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
  saveUser
} from './services/api';
import './App.css';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      games: [],
      platforms: [],
      categories: [],
      gameModes: [],
      users: [],
    }
  }

  componentDidMount() {
    fetchAllGames().then(data => {
      this.setState({ games:  data.games });
    })
    fetchAllPlatforms().then(data => {
      this.setState({ platforms:  data.platforms });
    })
    fetchAllCategories().then(data => {
      this.setState({ categories:  data.categories });
    })
    fetchAllGameModes().then(data => {
      this.setState({ gameModes:  data.game_modes });
    })
    fetchAllUsers().then(data => {
      this.setState({ users:  data.users });
    })

  }

  render() {
    return (
      <div className="App">
          
          
          {  
            this.state.games.map((game) => (
              <div >
                {game.game_name}
              </div>
            ))
          }
        {this.state.games.length>0 ? this.state.games[0].game_name : ''}
      </div>
    );
  }
}

export default App;
