class OrderMailer < ActionMailer::Base
  default from: "confirmation@bloomcaps.com"
  
  def send_confirmation(cart)
    @cart = cart
    
    mail :from => "confirmation@bloomcaps.com",
         :to => "luiscvega@gmail.com",
         :subject => "Order Confirmation"
  end
  
  
end