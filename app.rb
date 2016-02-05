require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
# require 'shotgun'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
  	$game = Game.new(player_1: Player.new(name: params[:name_one]), player_2: Player.new(name: params[:name_two]))
    redirect '/play'
  end

  get '/play' do
  	@attack = session[:attack]
    erb(:play)
  end

  post '/attack' do
  	session[:attack] = params[:attack]
  	$game.attack($game.opponent)
    redirect to('/play')
  end

  

  # start the server if ruby file executed directly
  run! if app_file == $0
end
