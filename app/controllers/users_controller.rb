class UsersController < ApplicationController

  def index
    @user = current_user
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    if @user.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    unless current_user.nil?
      if current_user.id == User.find(params[:id]).id || current_user.email == "admin@helpr.com"
        @user = User.find(params[:id])
      else
        redirect_to users_path, alert: 'Only Author can update'
      end
    else
      redirect_to log_in_path, alert: 'Log-In Failed'
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def destroy
    unless current_user.nil?
      if current_user.id == User.find(params[:id]).id || current_user.email == "admin@helpr.com"
        session[current_user.id] = nil
        User.delete(params[:id])
        redirect_to users_path
      else
        redirect_to users_path, alert: 'Only Author can delete'
      end
    else
      redirect_to log_in_path, alert: 'Log-In Failed'
    end
  end

  def search
    unless current_user.nil?
      @search_type = params[:t]
      @results = current_user.send @search_type.pluralize
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :address, :gender, :age, :phone, :email, :email_confirmation, :description, :rating, :picUrl, :password, :password_confirmation)
  end

end
