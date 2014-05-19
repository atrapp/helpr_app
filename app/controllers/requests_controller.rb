class RequestsController < ApplicationController

  def index
    @requests = Request.all
  end

  def new
    @users = User.all
    @locations = Location.all
    @categories = Category.all
    @request = Request.new
  end

  def create
    request = Request.create(request_params)
    redirect_to request_path(request)
  end

  def show
    @request = Request.find(params[:id])
  end

  def edit
    @request = Request.find(params[:id])    
  end

  def update
    request = Request.find(params[:id])
    request.update(request_params)
    redirect_to request_path(request)
  end

  def destroy
    Request.delete(params[:id])   
    redirect_to requests_path
  end

  private

  def request_params
    params.require(:request).permit(:title, :description, :date_start, :date_end, :user_id, :category_id, :location_id)
  end

end

