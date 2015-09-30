class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :nombre
      t.string :apellidos
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
