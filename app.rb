require 'sinatra'
require 'shotgun'

set :session_secret, 'conchiglie'

get '/' do
  "hello!"
end

get '/secret' do
  "no secret!"
end

get '/veg' do
  "I love broccoli"
end

get '/fruit' do
  "apple"
end

get '/bread' do
  "pretzel"
end

get  '/random-pasta' do
  @name = ["Penne", "Conchiglie", "Farfalle"].sample
  erb(:index)
end

get '/pasta-form'do
  erb(:index)
end

post '/named-pasta' do
  p params
  @name = params[:name]
  erb(:index)
end
