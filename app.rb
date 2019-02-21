# set :session_secret, 'super secret'
require 'sinatra/base'

class Birthday < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/save_data' do
    $name = params[:player_name]
    $date = params[:date]
    $month = params[:month]
    redirect '/message'
  end

  get '/message' do
    erb :message
  end


  run! if app_file == $0
end
