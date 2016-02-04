require 'sinatra/base'
# require 'shotgun'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
  	$player = {}
    erb(:index)
  end

  post '/names' do
   	$player[:player_1] = Player.new(name: params[:name_one])
   	$player[:player_2] = Player.new(name: params[:name_two])
    redirect to('/play')
  end

  get '/play' do
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
