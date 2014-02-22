class MenuController < ApplicationController
  def new
    @menu = Menu.new
  end
  def create
    @menu = Menu.new
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
