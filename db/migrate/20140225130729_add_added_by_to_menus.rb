class AddAddedByToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :added_by, :string
  end
end
