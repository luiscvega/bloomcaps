class ItemsController < ApplicationController
  def index
    @small_items = Item.where(size: "small")
    @big_items = Item.where(size: "big")
    @cart_item = cart.cart_items.new
  end
end
