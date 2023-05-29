class AddReferencesAtReservations < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :user, index: true
  end
end
