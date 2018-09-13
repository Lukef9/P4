const BASE_URL = process.env.REACT_APP_BASE_URL;

// get all functions
export async function fetchAllGames() {
    try {
        const games = await fetch(`${BASE_URL}/games`);
        return games.json();
      } catch (e) {
        throw (e);
      }
}

export async function fetchAllPlatforms() {
    try {
        const platforms = await fetch(`${BASE_URL}/platforms/`);
        return platforms.json();
      } catch (e) {
        throw (e);
      }
}

export async function fetchAllCategories() {
    try {
        const categories = await fetch(`${BASE_URL}/categories/`);
        return categories.json();
      } catch (e) {
        throw (e);
      }
}

export async function fetchAllGameModes() {
    try {
        const gameModes = await fetch(`${BASE_URL}/game_modes/`);
        return gameModes.json();
      } catch (e) {
        throw (e);
      }
}

export async function fetchAllUsers() {
    try {
        const users = await fetch(`${BASE_URL}/users/`);
        return users.json();
      } catch (e) {
        throw (e);
      }
}

export async function fetchOneUser(id) {
  try {
      const users = await fetch(`${BASE_URL}/users/${id}`);
      return users.json();
    } catch (e) {
      throw (e);
    }
}

export async function saveUser(user) {
  try {
    const newUser = {
      data: {
        attributes: {
          username: user.username,
          email: user.email,
          password_digest: user.password_digest
        }
      }
    }
    const opts = {
      method: 'POST',
      body: JSON.stringify(newUser),
      mode: 'cors',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
    };
    const userData = await fetch(`${BASE_URL}/users`, opts);
    return userData.json();
  } catch (e) {
    throw (e);
  }
}

export async function updateUser(user) {
  try {
    const newUser = {
      data: {
        attributes: {
          username: user.username,
          email: user.email,
          password_digest: user.password_digest
        }
      }
    }
    const opts = {
      method: 'PUT',
      body: JSON.stringify(newUser),
      mode: 'cors',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
    };
    const userData = await fetch(`${BASE_URL}/users/${user.id}`, opts);
    return userData.json();
  } catch (e) {
    throw (e);
  }
}

export async function destroyUser(id) {
  try {
    const opts = {
      method: 'DELETE',
      headers: {
        'Content-Type': 'application/json',
      },
    };
    const user = await fetch(`${BASE_URL}/users/${id}`, opts);
    return user;
  } catch (e) {
    throw (e);
  }
}