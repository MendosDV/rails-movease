class Vehicule < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :reservations
  has_many_attached :pictures

  validates :name, :description, :price, :category_id, :address, presence: true


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
