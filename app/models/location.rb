class Location < ActiveRecord::Base
  has_many  :offers
  has_many  :requests

  validates :name, presence: true
  validates :address, presence: true  
  validates :lng, presence: true
  validates :lat, presence: true
  
  acts_as_mappable :default_units => :miles,
                   :default_formula => :sphere,
                   :distance_field_name => :distance,
                   :lat_column_name => :lat,
                   :lng_column_name => :lng
end
