class Category < ActiveRecord::Base
  has_many  :offers
  has_many  :requests

  validates :title, presence: true
end
