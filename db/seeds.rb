require 'active_record'
require 'pg'

require_relative 'connection'
require_relative '../models/pokemon'
require_relative '../models/trainer'

Pokemon.destroy_all
Pokemon.create(name: "Charmander", cp: rand(800), poke_type: "fire", img_url: "https://img.pokemondb.net/artwork/charmander.jpg", trainer_id: rand(1..3))
Pokemon.create(name: "Squirtle", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/squirtle.jpg", trainer_id: rand(1..3))
Pokemon.create(name: "Pikachu", cp: rand(800), poke_type: "lightning", img_url: "https://img.pokemondb.net/artwork/pikachu.jpg", trainer_id: rand(1..3))
Pokemon.create(name: "Bulbasaur", cp: rand(800), poke_type: "grass", img_url: "https://img.pokemondb.net/artwork/bulbasaur.jpg", trainer_id: rand(1..3))
Pokemon.create(name: "Clefairy", cp: rand(800), poke_type: "fairy", img_url: "https://img.pokemondb.net/artwork/clefairy.jpg", trainer_id: rand(1..3))
Pokemon.create(name: "Nidoking", cp: rand(800), poke_type: "poison ground", img_url: "https://img.pokemondb.net/artwork/nidoking.jpg", trainer_id: rand(1..3))
Pokemon.create(name: "Gengar", cp: rand(800), poke_type: "ghost poison", img_url: "https://img.pokemondb.net/artwork/gengar.jpg", trainer_id: rand(1..3))
Pokemon.create(name: "Blastoise", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/blastoise.jpg", trainer_id: rand(1..3))

Trainer.destroy_all
Trainer.create(name: "Winston", power_level: 50, img_url: "http://www.cinescondite.com/images/churchill-first-image.jpg")
Trainer.create(name: "Ash", power_level: 21, img_url: "http://vignette2.wikia.nocookie.net/fantendo/images/c/c2/Ash_Ketchum_BW.png/revision/latest?cb=20130402155252")
Trainer.create(name: "Misty", power_level: 32, img_url: "https://upload.wikimedia.org/wikipedia/en/b/b1/MistyEP.png")

