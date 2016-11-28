require 'sinatra/base'
require 'json'

class MyApp < Sinatra::Base
  set :port, 4000
  enable :sessions

  get '/' do
    'Welcome to MyApp!'
  end

  get '/set' do
    @store = params
    params.each { |key, value| session[key] = value }
    File.open("public/data.json", "a") do |f|
      f.write(params.to_json)
    end
    erb :set
  end

  get '/get' do
    @value = session[params[:key]]
    erb :get
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
