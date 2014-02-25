class UsersController < ApplicationController
  def new
    @user = User.new
    @is_authorized_user = User.find_by(id: cookies[:user_id]).is_admin
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
    @user = User.new(user_params)
    @user.is_admin = true
    if @user.save
      redirect_to action: :index
    else
      render "new"
    end
  end
  def edit
    @user = User.find(params[:id])
    @is_authorized_user = User.find_by(id: cookies[:user_id]).is_admin
  end
  def update
    @user = User.find(params[:id])
    if @user.update(params[:user].permit(:login, :password, :password_confirmation, :email, :is_admin))
      redirect_to action: :index
    else
      render 'edit'
    end
  end
  def index
    @is_authorized_user = User.find_by(id: cookies[:user_id]).is_admin
    @users = User.all
  end
  private
  def user_params
    params.require(:user).permit(:login, :password, :password_confirmation, :email, :is_admin)
  end
end
