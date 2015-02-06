require './config/environment'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    @items = Item.all
    erb :items
  end

  post '/purchases' do
    @total = 0
    @purchases = []
    params.each do |name, quantity|
      item = Item.find_by(name: name)
      @purchases << item
      item.count -= quantity.to_i
      item.save
      if quantity.to_i > 0
        @total += item.price 
      end
    end
    erb :confirmation
  end

end