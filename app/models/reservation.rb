class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :vehicule

  # has_many :reviews
end
