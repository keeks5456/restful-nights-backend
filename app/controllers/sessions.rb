class SessionsController < ApplicationController

  # post request
  def create 
    user = User.find_by(sessions_params)
  end

  private

  def sessions_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end


end