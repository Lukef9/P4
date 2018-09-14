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

export default GamesByPlat;