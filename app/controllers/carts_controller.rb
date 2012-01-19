class CartsController < ApplicationController

  
  def show
    @items = cart.items
  end

end