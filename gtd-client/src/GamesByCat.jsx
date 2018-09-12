import React from 'react';

function GamesByCat({categories, addGameModes, addPlatforms, addCategories}) {
  return (
      categories.map((catGames) => (
        <div key={catGames.id}>
          <h1>{catGames.category_name}</h1> <br/>
          <div className='contain'>
          {
            catGames.games.map((game) => (
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

export default GamesByCat;