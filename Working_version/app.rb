require 'sinatra/base'
require './lib/compliment.rb'

# Why is it a good idea to wrap our App class in a module?
module StudentSite
  class App < Sinatra::Base


    get '/compliment' do
      @compliment = Compliment.new.messages
      erb :compliment
    end

  end
end