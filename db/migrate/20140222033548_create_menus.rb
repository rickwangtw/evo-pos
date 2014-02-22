class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.string :description
      t.boolean :is_available

      t.timestamps
    end
  end
end
