class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :email
      t.string :nombre
      t.string :apellidos
      t.string :password
      t.string :nroPlacaAuto
      t.string :marca
      t.string :model
      t.string :nroAsientos
      t.string :tipoAuto

      t.timestamps null: false
    end
  end
end
