require 'sinatra'
require "sinatra/reloader" if development?



class Battle < Sinatra::Base
	configure :development do
		register Sinatra::Reloader
	end

	enable :sessions

	get '/' do
		erb :index
	end

# WITHOUT USING GLOBAL VARIABLES =>

	# post '/names' do
	# 	session[:player_1_name] = params[:player_1_name]
	# 	session[:player_2_name] = params[:player_2_name]
  # 	redirect '/play'
	# end

	# get '/play' do
	# 	@player_1_name = session[:player_1_name] 
	# 	@player_2_name = session[:player_2_name] 
  # 	erb :play
	# end

	# get '/attack' do
	# 	@player_1_name = session[:player_1_name] 
	# 	@player_2_name = session[:player_2_name] 
	# 	erb :attack
	# end


	# USING GLOBAL VARIABLES =>
		post '/names' do
			$player_1 = Player.new(params[:player_1_name])
			$player_2 = Player.new(params[:player_2_name])
			redirect '/play'
		end

		get '/play' do
			@player_1_name = $player_1.name
			@player_2_name = $player_2.name
			erb :play
		end

		get '/attack' do
			@player_1_name = $player_1.name
			@player_2_name = $player_2.name
			erb :attack
		end

  run! if app_file == $0
end