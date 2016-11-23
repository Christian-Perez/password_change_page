class UsersController < ApplicationController
  def index
      @users = User.all
  end

  def new
    @user = User.new(user_params)
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[user_params])
    if @user.save

    else
      render 'new'
    end
  end

  def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end

  # def update

  # end
end
