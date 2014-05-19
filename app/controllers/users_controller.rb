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
    # User.create(user_params)
    # redirect_to root_path
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])    
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user)
  end

  def destroy
    User.delete(params[:id])   
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :address, :gender, :age, :phone, :email, :description, :rating, :picUrl, :password, :password_confirmation) 
  end

end
