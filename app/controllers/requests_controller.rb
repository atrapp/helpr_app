class RequestsController < ApplicationController

  def index
    @requests = Request.all
  end

  def new
    unless current_user.nil?     
      @request = Request.new
    else
      redirect_to log_in_path, alert: 'Log-In Failed'
    end
  end

  def create    
    request = Request.create(request_params)
    redirect_to request_path(request)    
  end

  def show
    @request = Request.find(params[:id])
  end

  def edit  
   unless current_user.nil?     
      if current_user.id == Request.find(params[:id]).user_id    
        @request = Request.find(params[:id])
      else 
        redirect_to requests_path, alert: 'Only Author can update'
      end
    else
      redirect_to log_in_path, alert: 'Log-In Failed'
    end
  end

  def update
    request = Request.find(params[:id])
    request.update(request_params)
    redirect_to request_path(request)
  end

  def destroy   
    unless current_user.nil?     
      if current_user.id == Request.find(params[:id]).user_id   
        Request.delete(params[:id])   
        redirect_to requests_path
      else 
        redirect_to requests_path, alert: 'Only Author can delete'
      end
    else
      redirect_to log_in_path, alert: 'Log-In Failed'
    end
  end

  private

  def request_params
    params.require(:request).permit(:title, :description, :date_start, :date_end, :user_id, :category_id, :location_id)
  end

end

