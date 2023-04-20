class SessionsController < ApplicationController
#--------------------SESSIONS--------------------#
  
#CREATE
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      jwt = JWT.encode(
        {
          user_id: user.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      render json: { jwt: jwt, email: user.email, user_id: user.id }, status: :created
    else
      render json: {message: "Invalid email or password. Please provide corrected params"}, status: :unauthorized
    end
  end

  def new
  end

  # def create
  #   user = User.find_by(email: params[:email])
  #   if user && user.authenticate(params[:password])
  #     session[:user_id] = user.id
  #     redirect_to root_path
  #   else
  #   flash[:error] = "Invalid email or password"
  #   render :new
  #   end
  # end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
