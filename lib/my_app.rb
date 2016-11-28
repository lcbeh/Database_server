require 'sinatra/base'

class MyApp < Sinatra::Base
  set :port, 4000

  get '/' do
    'Welcome to MyApp!'
  end

  get '/set' do
    @store = Hash.new
    params.each { |key, value| @store[key] = value }
    erb :set
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
