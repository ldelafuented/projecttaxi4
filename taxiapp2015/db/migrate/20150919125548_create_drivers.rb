class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :lastname
      t.string :dni
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
