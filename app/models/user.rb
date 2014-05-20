class User < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  has_secure_password

  has_many  :offers
  has_many  :requests
 end
