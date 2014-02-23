class OrdersController < ApplicationController
  def new
    @menu = Menu.all
    @order_items = []
    @available_integer = 0..100
    @menu.each do |menu|
      if not menu.is_available
        next
      end
      order_item = OrderItem.new
      order_item.menu_id = menu.id
      @order_items << order_item
    end
  end
  def create
    @menu = Menu.all
    order_items = []
    @menu.each do |menu|
      if not menu.is_available or params[:"#{menu.id}-quantity"].to_i == 0
        next
      end
      order_item = OrderItem.new
      order_item.menu_id = menu.id
      order_item.quantity = params[:"#{menu.id}-quantity"].to_i
      order_items << order_item
    end
    order = Order.new
    order.order_items = order_items
    order.save
    redirect_to action: :new
  end
end
