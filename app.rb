require 'sinatra/base'
require './lib/player.rb'
# require 'shotgun'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
  	$player = {}
    erb(:index)
  end

  post '/names' do
  	p params[:name_one]
  	p params[:name_two]
   	$player[:player_1] = Player.new(name: params[:name_one])
   	$player[:player_2] = Player.new(name: params[:name_two])
    redirect '/play'
  end

  get '/play' do
  	@player1_name = $player[:player_1].name 
  	@player2_name = $player[:player_2].name
  	@attack = session[:attack]
    erb(:play)
  end

  post '/attack' do
  	session[:attack] = params[:attack]
    redirect to('/play')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
