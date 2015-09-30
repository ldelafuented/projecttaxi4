class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :codigo
      t.string :streetFrom
      t.string :streetTo
      t.string :referencias
      t.datetime :dateReservation
      t.string :feedback

      t.timestamps null: false
    end
  end
end
