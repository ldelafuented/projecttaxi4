class CreateListFavorites < ActiveRecord::Migration
  def change
    create_table :list_favorites do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
