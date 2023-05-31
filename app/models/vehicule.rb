class Vehicule < ApplicationRecord
  # belongs_to :categorie
  belongs_to :user
  belongs_to :category

  has_many :reservations
  has_many_attached :pictures

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
