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

# Individual pages for pokemon
get '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemon/show"
end

# List out all trainers
get '/trainer' do
  @trainer = Trainer.all
  erb :'trainers/index'
end

# Individual page for the trainer
get '/trainer/:id' do
  @trainer = Trainer.find(params[:id])
  @pokemon = Pokemon.where(trainer_id: params[:id])
  erb :"trainers/show"
end


