class MenuController < ApplicationController
  def new
    @menu = Menu.new
  end
  def create
    @menu = Menu.new(params[:menu].permit(:name, :description, :is_available))
    @menu.added_by = cookies[:user_id].to_i
    if @menu.save
      redirect_to action: :index
    else
      render "new"
    end
  end
  def edit
    @menu = Menu.find(params[:id])
  end
  def update
    @menu = Menu.find(params[:id])
    @menu.modified_by = cookies[:user_id].to_i
    if @menu.update(params[:menu].permit(:name, :description, :is_available))
      redirect_to action: :index
    else
      render 'edit'
    end
  end
  def show
    @menu = Menu.find(params[:id])
  end
  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    redirect_to menu_index_path
  end
  def index
    @is_authorized_user = User.find_by(id: cookies[:user_id]).is_admin
    @menus = Menu.all
  end
end
