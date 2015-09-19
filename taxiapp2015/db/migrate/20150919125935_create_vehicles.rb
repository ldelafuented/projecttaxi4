class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :brand
      t.string :model
      t.string :inumber
      t.integer :type
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
