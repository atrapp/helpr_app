class LocationsController < ApplicationController

  include StaticMapHelper

  def index
    @locations = Location.all
    @center  = Location.first.name   
    @radius = params[:radius]

    if @radius != nil 
      @locations_within_radius  = Location.within(@radius, :origin => @center) 
        else
      @locations_within_radius = [] 
    end

  end

end

# class LocationsController < ApplicationController

#   include StaticMapHelper

#   def index
#     @locations = Location.all
#     @center  = Location.first.name
#     @radius = 5
#     @locations_within_radius  = Location.within(@radius, :origin => @center)     
#   end

# end
