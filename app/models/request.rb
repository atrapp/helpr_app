class Request < ActiveRecord::Base
  belongs_to  :user
  belongs_to  :category
  belongs_to  :location

  validates :title, presence: true
  validates :category, presence: true
  validates :location, presence: true
  
end
