class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.boolean :is_admin
      t.string :email
      t.string :password
      t.string :salt

      t.timestamps
    end
  end
end
