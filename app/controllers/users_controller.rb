class UsersController < ApplicationController
 #--------------------USERS--------------------# 


# NEW
  def new
    @user = User.new
  end

# INDEX 
  def index
    users = User.all
    render json: users
  end
  
# CREATE
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
