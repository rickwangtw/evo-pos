class MenuController < ApplicationController
  def new
    @menu = Menu.new
  end
  def create
    @menu = Menu.new(params[:item].permit(:name, :description, :is_available))
    if @menu.save
      redirect_to action: :index
    else
      render "new"
    end
  end
  def index
    @menus = Menu.all
  end
end
