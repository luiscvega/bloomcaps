class CartsController < ApplicationController

  def show
    @items = cart.items
  end
  
  def checkout
    OrderMailer.send_confirmation(cart).deliver
    redirect_to root_url, notice: "E-mail sent!"
  end
  

end