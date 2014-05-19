class UsersController < ApplicationController

  def index
    @user = current_user
    @users = User.all
  end

  def new
    @user = User.new   
  end

  def create
    user = User.create(user_params)
    redirect_to user_path(user)    
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  #   @user = User.find(params[:id])

    unless current_user.nil?     
      if current_user.id == User.find(params[:id]).id    
        @user = User.find(params[:id])    
      else 
        redirect_to users_path, alert: 'Only Author can update'
      end
    else
      redirect_to log_in_path, alert: 'Log-In Failed'
    end   
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user)
  end

  def destroy
    # User.delete(params[:id])   
    # redirect_to users_path

    unless current_user.nil?     
      if current_user.id == User.find(params[:id]).id   
        User.delete(params[:id])   
        redirect_to users_path
      else 
        redirect_to users_path, alert: 'Only Author can delete'
      end
    else
      redirect_to log_in_path, alert: 'Log-In Failed'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :address, :gender, :age, :phone, :email, :description, :rating, :picUrl, :password, :password_confirmation) 
  end

end
