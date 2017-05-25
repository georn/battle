require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    # @name1 = params[:name1]
    # @name2 = params[:name2]
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    redirect '/play'
  end

  get '/play' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    @player1_health = $player1.hit_points
    @player2_health = $player2.hit_points
    erb :play
  end

  get '/attack' do
    @player1 = $player1
    @player2 = $player2
    @player1.attack(@player2)
    erb :attack
  end

  get '/battle' do
    'Hello Battle!'
  end

  run! if app_file == $0
end
