class LocationsController < ApplicationController

  include StaticMapHelper

  def index
    @locations = Location.all
  end
    
  def search
    @start_location  = params[:start_location]   
    @radius = params[:radius]

    if @start_location != nil && @radius != nil
      @locations  = Location.within(@radius, :origin => @start_location) 
    else
      redirect_to locations_path
    end
  end

  def new
    @location = Location.new
  end

  def create
    location = Location.create(location_params)
    redirect_to location_path(location)
  end

  def show
    @location = Location.find(params[:id])
  end

  def edit
    @location = Location.find(params[:id])    
  end

  def update
    location = Location.find(params[:id])
    location.update(location_params)
    redirect_to location_path(location)
  end

  def destroy
    Location.delete(params[:id])   
    redirect_to locations_path
  end

  private

  def location_params
    params.require(:location).permit(:name, :address, :cat, :public, :lng, :lat) 
  end

end
