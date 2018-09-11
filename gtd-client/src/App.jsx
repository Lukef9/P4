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
  }
  // might breack everything
  getGamesforOnePlatform() {
    let platGames = []
    console.log('here')
    this.state.platforms.map((platform) => {
      console.log('there')
      this.getAllGamesOnOnePlatform(platform.id)
        .then(data => platGames.push({data: data, name: platform.platform_name}))
        .then(data => this.setState({ platformGames: platGames}))
    })
  }
//end
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

  getAllGamesOnOnePlatform(id) {
    return fetchAllGamesOnOnePlatform(id).then(data => {
      return{ platformGames:  data.games };
    })
  }

  render() {
    let test;
    
    return (
      <div className="App">
            {
            this.state.platformGames.map((platGames) => (
              <div>
                <h1>{platGames.name}</h1> <br/>
                <div className='contain'>
                {
                  platGames.data.platformGames.map((game) => (
                  <div className="grid-item">
                    Title: {game.game_name}
                    <br/>
                    Rating: {game.rating}
                  </div>
                  ))
                }
                </div>
              </div>
            ))
          }
      </div>
    );
  }
}

export default App;
