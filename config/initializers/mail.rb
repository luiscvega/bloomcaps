ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV['SENDGRID_USERNAME'],
  # :user_name      => "bloomcaps",
  :password       => ENV['SENDGRID_PASSWORD'],
  # :password       => "bloomcaps",
  :domain         => 'heroku.com'
}
ActionMailer::Base.delivery_method = :smtp