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
              Title: {game.game_name}
              <br/>
              Rating: {game.rating}
              <p>{addPlatforms(game)}</p>
              <p>{addGameModes(game)}</p>
              <p>{addCategories(game)}</p>
            </div>
            ))
          }
          </div>
        </div>
      ))
  )
}

export default GamesByGameMode;