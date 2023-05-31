class Vehicule < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :reservations
  has_many_attached :pictures
end
