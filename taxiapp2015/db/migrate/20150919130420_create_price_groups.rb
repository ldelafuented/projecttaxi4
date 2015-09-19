class CreatePriceGroups < ActiveRecord::Migration
  def change
    create_table :price_groups do |t|
      t.string :city_from
      t.string :city_to
      t.decimal :cost

      t.timestamps null: false
    end
  end
end
