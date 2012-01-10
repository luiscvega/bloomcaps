class CartsController < ApplicationController
  include Samurai::Rails::Helpers

  def payment_form
    setup_for_transparent_redirect(params)
  end
  
  def show
    @items = cart.items
  end
  
  def processed
    @transaction = Samurai::Processor.purchase params[:payment_method_token], 1.00
  end
end
