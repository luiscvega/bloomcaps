class CartItemsController < ApplicationController
  def create
    params[:quantity].to_i.times do
      cart.cart_items.create(item_id: params[:item])
    end
    
    redirect_to items_url
  end
end
