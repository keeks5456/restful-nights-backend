class UsersController < ApplicationController

  def create
    user = User.create(user_params)
    render json: {user: UserSerializer.new(user)}, status: :created
  end

  def index 
    users = User.all
    render json: users
  end

  def show 
    user = User.find_by(params[:id => true])
    if user
      render json: user 
    else
      render json: { message: 'This ID does not exist' }
    end
  end

  def destroy
    user = User.find_by(params[:id])
    user.destroy

    render json: { message: 'deleted' }
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
