class SessionsController < ApplicationController

  # post request
  def create 
    user = User.find_by(sessions_params)

    if user 
      session[:user_id] = user.id
      render json: {
        status: :created,
        logged_in: true,
        user: user 
      }
    else 
        render json: {status: 401}
    end
    end
  end


  private

  def sessions_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end


end