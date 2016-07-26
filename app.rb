require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

# Require the connection file
require_relative 'db/connection'

# Require the models
require_relative 'models/pokemon'
require_relative 'models/trainer'

# Redirect to the home page
get '/' do
 redirect '/home'
end

# Home page 
get '/home' do
  erb :home
end  

# List out all the pokemon
get '/pokemon' do
  @pokemon = Pokemon.all
  erb :"pokemon/index"
end

# page to create new pokemon
get '/pokemon/new_pokemon' do
  erb :"pokemon/new_pokemon"
end

# Individual pages for pokemon
get '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemon/show"
end

# create a new pokemon
post '/pokemon' do
  pokemon = Pokemon.create(params[:pokemon])
  redirect "/pokemon/#{pokemon.id}"
end

# Edit a pokemon
get '/pokemon/:id/edit' do
  @pokemon = Pokemon.find(params[:id])
  erb(:"pokemon/edit")
end

# Update the pokemons info
put '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.update(params[:pokemon])
  redirect("/pokemon/#{@pokemon.id}")
end

# Delete Pokemon 
delete '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.destroy
  redirect('/pokemon')
end

# page to create new trainer
get '/trainer/new_trainer' do
  erb :"trainers/new_trainer"
end

# List out all trainers
get '/trainer' do
  @trainer = Trainer.all
  erb :'trainers/index'
end

# create the new trainer
post '/trainer' do
  trainer = Trainer.create(params[:trainer])
  redirect "/trainer/#{trainer.id}"
end


# Individual page for the trainer
get '/trainer/:id' do
  @trainer = Trainer.find(params[:id])
  @pokemon = Pokemon.where(trainer_id: params[:id])
  erb :"trainers/show"
end

# Edit a trainer
get '/trainer/:id/edit' do
  @trainer= Trainer.find(params[:id])
  erb(:"/trainers/edit")
end

# Update the trainer info
put '/trainer/:id' do
  @trainer = Trainer.find(params[:id])
  @trainer.update(params[:trainer])
  redirect("/trainer/#{@trainer.id}")
end

# Delete trainer
delete '/trainer/:id' do
  @trainer= Trainer.find(params[:id])
  @trainer.destroy
  redirect('/trainer')
end

