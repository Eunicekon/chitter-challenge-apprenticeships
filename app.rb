require 'sinatra/base'
require './lib/chitter'

class Chitter < Sinatra::Base
  enable :sessions

  get '/' do
    'Chitter'
  end

  get '/messages' do
    @messages = Messages.all
    erb :'messages/index'
  end

  get '/post_messages' do
    @comment = params[:comment]
    redirect :'messages/post'
  end

  post '/post_message' do
    session[:comment] = params[:comment]
    erb :'messages/read'
  end

  run! if app_file == $0
end
