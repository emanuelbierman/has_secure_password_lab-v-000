class UsersController < ApplicationController
  before_action :require_login

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
  end

  def home
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
