class FixOrderItemsColumnName < ActiveRecord::Migration
  def change
    rename_column :order_items, :quanity, :quantity
  end
end
