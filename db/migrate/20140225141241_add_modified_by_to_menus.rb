class AddModifiedByToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :modified_by, :integer
  end
end
