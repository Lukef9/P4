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

export default GamesByCat;