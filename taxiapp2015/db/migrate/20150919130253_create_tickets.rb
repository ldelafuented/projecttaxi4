class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :city_from
      t.string :city_to
      t.datetime :date_receipt
      t.integer :nro_passanger
      t.integer :payment_type
      t.integer :status_ticket
      t.string :reference
      t.string :feedback

      t.timestamps null: false
    end
  end
end
