class UsersController < ApplicationController
  def new

  end

  def show
    @user = User.first
  end
end
