require 'sinatra/base'
require './lib/chitter'

class Chitter < Sinatra::Base
  get '/' do
    'Chitter'
  end

  get '/messages' do
    @messages = Messages.all
    erb :'messages/index'
  end

  run! if app_file == $0
end
