class OffersController < ApplicationController

  def index
    @offers = Offer.all
  end

  def search
    @search_cat = params[:search_cat].values.first 
    @start_location = params[:start_location]
    @radius = params[:radius]
      
    if @search_cat !="" && @start_location !="" && @radius !="" 
      nearby_locations = Location.within(@radius, origin: @start_location)
      potential_offers = nearby_locations.map { |location| location.offers }.flatten
      @offers = potential_offers.select { |offer| offer.category.title == @search_cat} 
    else
      redirect_to offers_path
    end
  end

  def new   
    unless current_user.nil?     
       @offer = Offer.new
    else
      redirect_to log_in_path, alert: 'Log-In Failed'
    end
  end

  def create
    @offer = Offer.create(offer_params)

    if @offer.save
      redirect_to offer_path(@offer)
    else
      render 'new'
    end    
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def edit    
    unless current_user.nil?     
      if current_user.id == Offer.find(params[:id]).user_id || current_user.email == "admin@helpr.com"  
        @offer = Offer.find(params[:id]) 
      else 
        redirect_to offers_path, alert: 'Only Author can update'
      end
    else
      redirect_to log_in_path, alert: 'Log-In Failed'
    end   
  end

  def update
    @offer = Offer.find(params[:id])

    if @offer.update(offer_params)
      redirect_to offer_path(@offer)
    else
      render 'edit'
    end  
  end

  def destroy
    unless current_user.nil?     
      if current_user.id == Offer.find(params[:id]).user_id || current_user.email == "admin@helpr.com" 
        Offer.delete(params[:id])   
        redirect_to offers_path
      else 
        redirect_to offers_path, alert: 'Only Author can delete'
      end
    else
      redirect_to log_in_path, alert: 'Log-In Failed'
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :date_start, :date_end, :user_id, :category_id, :location_id)
  end

end
