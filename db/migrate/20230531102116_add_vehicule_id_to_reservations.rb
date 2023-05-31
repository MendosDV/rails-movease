class AddVehiculeIdToReservations < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :vehicule, foreign_key: true
  end
end
