require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    # @name1 = params[:name1]
    # @name2 = params[:name2]
    session[:player1_name] = params[:player1_name]
    session[:player2_name] = params[:player2_name]
    redirect '/play'
  end

  get '/play' do
    @player1_name = session[:player1_name]
    @player2_name = session[:player2_name]
    @player1_health ||= 100
    @player2_health ||= 100
    # session[:player2_health] ||= 100
    # @player2_health  = session[:player2_health]
    erb :play
  end

  get '/attack' do
    @player1_name = session[:player1_name]
    @player2_name = session[:player2_name]
    erb :attack
    # session[:player2_health] -= 20
    # redirect '/play'
  end

  get '/battle' do
    'Hello Battle!'
  end

  run! if app_file == $0
end
