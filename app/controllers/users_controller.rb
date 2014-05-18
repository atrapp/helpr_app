class UsersController < ApplicationController

  def index
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
    params.require(:user).permit(:name, :address, :gender, :age, :phone, :email, :description, :rating, :picUrl) 
  end

end

      # t.string      :name
      # t.string      :address
      # t.string      :gender
      # t.integer     :age
      # t.string      :phone
      # t.string      :email
      # t.string      :description
      # t.integer     :rating
      # t.string      :picUrl

# class SquaresController < ApplicationController

#   # get '/squares' => 'squares#index'
#   def index
#     @squares = Square.all
#   end

#   # get '/squares/new' => 'squares#new'
#   def new
#     @square = Square.new
#   end

#   # post '/squares' => 'squares#create'
#   def create
#     square = Square.create(square_params)
#     redirect_to square_path(square)
#   end

#   # get '/squares/:id' => 'squares#show'
#   def show
#     @square = Square.find(params[:id])
#   end

#   # get '/squares/:id/edit' => 'squares#edit'
#   def edit
#     @square = Square.find(params[:id])
#   end

#   # put '/squares/:id' => 'squares#update'
#   def update
#     square = Square.find(params[:id])
#     square.update(square_params)
#     redirect_to square_path(square)
#   end

#   # delete '/squares/:id' => 'squares#destroy'
#   def destroy
#     Square.delete(params[:id])
#     redirect_to squares_path
#   end

#   private

#   def square_params
#     params.require(:square).permit(:side_length, :border_radius, :color)
#   end

# end


