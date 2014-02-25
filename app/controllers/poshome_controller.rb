class PoshomeController < ApplicationController
  def index
    @is_authorized_user = User.find_by(id: cookies[:user_id]).is_admin
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
  def settings
    @user = User.find_by(id: cookies[:user_id])
    redirect_to edit_user_path(@user)
  end
  def admin
  end
end
