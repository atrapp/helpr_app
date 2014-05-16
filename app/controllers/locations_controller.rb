class LocationsController < ApplicationController

  include StaticMapHelper

  def index
    @locations = Location.all
    @center  = Location.first.name
    @radius = 5
    @locations_within_radius  = Location.within(@radius, :origin => @center)     
  end

end
