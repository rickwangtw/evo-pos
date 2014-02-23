class PoshomeController < ApplicationController
  def index
  end
  def order
    @menus = Menu.all
    redirect_to new_order_path
  end
  def build
  end
  def admin
  end
end
