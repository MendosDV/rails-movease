class Vehicule < ApplicationRecord
  # belongs_to :categorie
  belongs_to :user
  belongs_to :category

  has_many :reservations
end
