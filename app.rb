require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do

    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    #binding.pry
    erb :display_puppy
  end

end
