const BASE_URL = 'http://localhost:3000';

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
        const platforms = await fetch(`${BASE_URL}/platforms`);
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

