class ChangeUserFormat < ActiveRecord::Migration
  def change
    remove_column :orders, :ordered_by
    remove_column :orders, :built_by
    remove_column :menus, :added_by
    add_column :orders, :ordered_by, :integer
    add_column :orders, :built_by, :integer
    add_column :menus, :added_by, :integer
  end
end
