class UsersController < ApplicationController
  skip_before_filter :verify_authenticity_token

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
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  # def update

  # end
end
