class UsersController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def index
      @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.where(params[:id]).first
  end

  def create
    User.create(user_params)
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  # def update

  # end
end
