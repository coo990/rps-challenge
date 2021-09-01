require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/game'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    session[:name] = params[:name]
    erb :index
  end

  post '/welcome' do
    session[:name] = params[:name]
    @name = session[:name]
    erb :welcome
  end

  get '/play' do
    game = Game.new
    @random = game.random
    @player_score = game.player_score
    @result1 = game.result1
    erb :play
  end

  run! if app_file == $0
end
