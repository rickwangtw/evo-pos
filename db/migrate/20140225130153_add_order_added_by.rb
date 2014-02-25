class AddOrderAddedBy < ActiveRecord::Migration
  def change
    add_column :orders, :ordered_by, :string
  end
end
