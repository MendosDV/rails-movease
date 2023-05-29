class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :reservations
  has_many :vehicules
  # has_many :reviews, through: :reservation

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :vehicules, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :phone_number, presence: true

end
