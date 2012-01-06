class Item < ActiveRecord::Base
  has_many :cart_items
  
  has_attached_file :photo,
    :storage => :s3,
    :bucket => 'bloomcaps-items',
    :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET']
    },
    :path => "/:style/:id/:filename"
  
end