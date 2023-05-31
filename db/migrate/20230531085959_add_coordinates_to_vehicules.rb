class AddCoordinatesToVehicules < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicules, :latitude, :float
    add_column :vehicules, :longitude, :float
  end
end
