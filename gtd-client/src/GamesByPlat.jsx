import React from 'react';

function GamesByPlat({platforms, addGameModes, addPlatforms, addCategories}) {
  return (
      platforms.map((platGames) => (
        <div key={platGames.id}>
          <h1>{platGames.platform_name}</h1> <br/>
          <div className='contain'>
          {
            platGames.games.map((game) => (
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

export default GamesByPlat;