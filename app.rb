require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    # @name1 = params[:name1]
    # @name2 = params[:name2]
    session[:name1] = params[:name1]
    session[:name2] = params[:name2]
    redirect "/play"
  end

  get '/play' do
    @name1 = session[:name1]
    @name2 = session[:name2]
    erb :play
  end

  get '/battle' do
    'Hello Battle!'
  end

  run! if app_file == $0
end
