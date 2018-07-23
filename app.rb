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
    binding.pry
    @puppy = Puppy.new(params[:name])
    erb :display_puppy
  end

end
