class AddCategoriesToVehicules < ActiveRecord::Migration[7.0]
  def change
    add_reference :vehicules, :category, null: false, foreign_key: true
  end
end
