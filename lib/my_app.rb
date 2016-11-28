require 'sinatra/base'

class MyApp < Sinatra::Base
  set :port, 4000
  enable :sessions

  get '/' do
    'Welcome to MyApp!'
  end

  get '/set' do
    @store = params
    params.each { |key, value| session[key] = value }
    erb :set
  end

  get '/get' do
    @value = session[params[:key]]
    erb :get
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
