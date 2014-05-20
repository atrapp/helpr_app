class Request < ActiveRecord::Base
  belongs_to  :user
  belongs_to  :category
  belongs_to  :location

  validates :title, presence: true
  validates :category, presence: true
  validates :location, presence: true

  acts_as_mappable :default_units => :miles,
                   :default_formula => :sphere,
                   :distance_field_name => :distance,
                   :lat_column_name => :lat,
                   :lng_column_name => :lng
  
end
