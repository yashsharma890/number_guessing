CREATE DATABASE number_guess;
\c number_guess

CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(22) UNIQUE NOT NULL,
  games_played INT DEFAULT 0,
  best_game INT
);

CREATE TABLE games (
  game_id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(user_id),
  guesses INT NOT NULL
);
