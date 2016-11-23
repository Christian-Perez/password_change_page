class UsersController < ApplicationController
  def new
    @user = User.new(user_params)
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[user_params])
    if @user.save
      puts @user.name += " was created"
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
