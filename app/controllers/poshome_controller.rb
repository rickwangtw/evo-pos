class PoshomeController < ApplicationController
  def index
  end
  def order
    @menus = Menu.all
    redirect_to new_order_path
  end
  def build
    @menus = Menu.all
    @orders = Order.all
    @orders.each do |order|
      if order.noticed_date == nil
        order.noticed_date = Time.new
        order.save
      end
    end
  end
  def admin
  end
end
