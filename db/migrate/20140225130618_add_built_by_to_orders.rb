class AddBuiltByToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :built_by, :string
  end
end
