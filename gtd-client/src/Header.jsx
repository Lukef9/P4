import React from 'react';

function Header({toggleCurrentPage}) {
  return (
    <header className="App-header">
      <div className="App-title">Game Time Decision!!</div>
      <div className="flex-contain">
        <button onClick={(e)=>toggleCurrentPage(e)}  name="register" className="flex-item">Register</button>
        <button onClick={(e)=>toggleCurrentPage(e)}  name="login"className="flex-item">Login</button>
        <button onClick={(e)=>toggleCurrentPage(e)}  name="category"className="flex-item">Categories</button>
        <button onClick={(e)=>toggleCurrentPage(e)}  name="platform"className="flex-item">Platforms</button>
        <button onClick={(e)=>toggleCurrentPage(e)}  name="gameMode"className="flex-item">Game Modes</button>
        <button onClick={(e)=>toggleCurrentPage(e)}  name="profile"className="flex-item">Profile</button>
      </div>
    </header>
  );
}

export default Header;