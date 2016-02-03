require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @name_one = session[:name_one].inspect
    @name_two = session[:name_two].inspect
    # @name_one = params[:name_one]
  	# @name_two = params[:name_two]
    # erb(:play)
    redirect to('/play')
  end

  get '/play' do
    p params
    #erb(:play)
    session['name_one'] = params[:name_one]
    session['name_two'] = params[:name_two]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
