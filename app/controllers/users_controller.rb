class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to action: :index
    else
      render "new"
    end
  end
  def admin_create
    @user = User.new(params.require(:user).permit(:login, :password, :password_confirmation, :email, :is_admin))
    @user.is_admin = true
    if @user.save
      redirect_to action: :index
    else
      render "new"
    end
  end
  def index
    @users = User.all
  end
  private
  def user_params
    params.require(:user).permit(:login, :password, :password_confirmation, :email)
  end
end
