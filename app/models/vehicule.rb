class Vehicule < ApplicationRecord
  # belongs_to :categorie
  belongs_to :user
  has_many :reservations
end
