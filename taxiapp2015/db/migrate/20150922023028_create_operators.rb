class CreateOperators < ActiveRecord::Migration
  def change
    create_table :operators do |t|
      t.string :email
      t.string :nombre
      t.string :apellidos
      t.string :password
      t.boolean :esAdmin

      t.timestamps null: false
    end
  end
end
