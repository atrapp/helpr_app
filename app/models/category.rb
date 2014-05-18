class Category < ActiveRecord::Base
  has_many  :offers
  has_many  :requests
end
