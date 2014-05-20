class User < ActiveRecord::Base 
  has_secure_password

  has_many  :offers
  has_many  :requests

  validates :name, presence: true
  validates :address, presence: true  
  validates :email, presence: true, confirmation: true, uniqueness: true, email: true
  validates :terms_of_service, acceptance: true
  validates :password, length: {within: 8..100, too_short: "too short. Your password needs mininum 8 characters.", too_long: "too long. Your password exceeds the maximum length of 100 characters."}

 end
