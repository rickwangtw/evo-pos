class AddModifyAndAddOfUser < ActiveRecord::Migration
  def change
    add_column :users, :created_by, :integer
    add_column :users, :modified_by, :integer
  end
end
