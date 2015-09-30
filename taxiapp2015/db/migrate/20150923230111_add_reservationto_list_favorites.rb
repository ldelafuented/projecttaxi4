class AddReservationtoListFavorites < ActiveRecord::Migration
  def change
    add_reference :list_favorites, :reservation, index: true, foreign_key: true
  end
end
