import React from 'react';

function GamesByGameMode({gameModes, addGameModes, addPlatforms, addCategories}) {
  return (
      gameModes.map((gmGames) => (
        <div key={gmGames.id}>
          <h1>{gmGames.game_mode_name}</h1> <br/>
          <div className='contain'>
          {
            gmGames.games.map((game) => (
            <div key={game.id} className="grid-item">
              <br/>
              <strong><u>Title:</u></strong> <br/> {game.game_name}
              <br/>
              <br/>
              <strong><u>Rating:</u></strong> <br/> {game.rating}
              <div><br/>{addPlatforms(game)}</div>
              <div><br/>{addGameModes(game)}</div>
              <div><br/>{addCategories(game)}</div>
            </div>
            ))
          }
          </div>
        </div>
      ))
  )
}

export default GamesByGameMode;