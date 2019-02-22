# set :session_secret, 'super secret'
require 'sinatra/base'
require './lib/birthday_message'

class Birthday < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/save_data' do
    $name = params[:player_name]
    $bday_msg = BirthdayMessage.new(params[:day], params[:month])
    redirect '/message'
  end

  get '/message' do
    @bday_msg = $bday_msg.create_msg
    erb :message
  end

  run! if app_file == $0
end
