class MenuController < ApplicationController
  def new
    @menu = Menu.new
  end
  def create
    @menu = Menu.new(params[:menu].permit(:name, :description, :is_available))
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
    if @menu.update(params[:menu].permit(:name, :description, :is_available))
      redirect_to action: :index
    else
      render 'edit'
    end
  end
  def show
    @menu = Menu.find(params[:id])
  end
  def index
    @menus = Menu.all
  end
end
