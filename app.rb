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

get '/pokemon' do
  @pokemon = Pokemon.all
  erb :"pokemon/all_pokemon"
end

get '/trainer' do
  @trainer = Trainer.all
  erb :'trainers/all_trainers'
end

