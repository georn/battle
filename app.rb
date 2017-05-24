require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    # @name1 = params[:name1]
    # @name2 = params[:name2]
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @player1_health ||= 100
    @player2_health ||= 100
    # session[:player2_health] ||= 100
    # @player2_health  = session[:player2_health]
    erb :play
  end

  get '/attack' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :attack
    # session[:player2_health] -= 20
    # redirect '/play'
  end

  get '/battle' do
    'Hello Battle!'
  end

  run! if app_file == $0
end
