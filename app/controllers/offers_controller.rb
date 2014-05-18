class OffersController < ApplicationController

  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def create
    offer = Offer.create(offer_params)
    redirect_to offer_path(offer)
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def edit
    @offer = Offer.find(params[:id])    
  end

  def update
    offer = Offer.find(params[:id])
    offer.update(offer_params)
    redirect_to offer_path(offer)
  end

  def destroy
    Offer.delete(params[:id])   
    redirect_to offers_path
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :date_start, :date_end) 
    # , :user, :category, :location) 
  end

end
