class UsersController < ApplicationController
  def index
      @users = User.all
  end

  def new
    @user = User.new(params[:user])
    # @user = User.new(params[user_pa rams])
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[user_params])
    # @user = User.new(params[:user])
    if @user.save

    else
      render 'new'
    end
  end

  private

  def user_params
    # params.permit(:name, :email, :password, :password_confirmation)
    # params.require(:user).permit(:name, :email, :encrypted_password, :password, :password_confirmation)
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  # def update

  # end
end
