DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS trainers;

CREATE TABLE pokemons (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  cp INT NOT NULL,
  poke_type TEXT NOT NULL,
  img_url TEXT NOT NULL,
  trainer_id INT NOT NULL
);

CREATE TABLE trainers (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  power_level INT NOT NULL,
  img_url TEXT NOT NULL
);


