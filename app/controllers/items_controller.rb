class ItemsController < ApplicationController
  def index
    @small_items = Item.where(size: "small")
    @big_items = Item.where(size: "big")
    @cart_item = cart.cart_items.new
  end
  
  def new
    @item = Item.new
  end
  
  def create
    Item.create(params[:item])
    redirect_to items_url
  end
end
