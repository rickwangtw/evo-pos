class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :menu_id
      t.decimal :quanity
      t.references :order, index: true

      t.timestamps
    end
  end
end
