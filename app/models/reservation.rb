class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :vehicule

  # has_many :reviews
  validate :check_date_availability, on: :create
  # validates :date, presence: true, uniqueness: { scope: :vehicule }

  def accept!
    update(status: "acceptée")
  end

  def decline!
    update(status: "refusée")
  end

  private

  def check_date_availability
    if vehicule.reservations.where(date: date).exists?
      errors.add(:date, "Ce véhicule est déjà réservé")
    end
  end
end
