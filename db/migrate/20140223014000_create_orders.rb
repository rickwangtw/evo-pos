class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.timestamp :noticed_date
      t.timestamp :fulfilled_date

      t.timestamps
    end
  end
end
