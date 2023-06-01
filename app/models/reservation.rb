class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :vehicule
  # has_many :reviews
  validate :check_date_availability
  # validates :date, presence: true, uniqueness: { scope: :vehicule }

  private


  def check_date_availability

    if vehicule.reservations.where(date: date).exists?
      errors.add(:date, "has already been reserved")
    end

  end

end
