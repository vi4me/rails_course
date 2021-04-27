class ItemsController < ApplicationController

  def index
    @items = Item.all
    # render text: @items.map do |i|
    #   "#{i.name}: #{i.price}"
    end
end
