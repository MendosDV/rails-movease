class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :reservations
  has_many :vehicules, dependent: :destroy
  # has_many :reviews, through: :reservation

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar

  validates :avatar, attached: true
  validates :first_name, :last_name, :email, :password, :phone_number, presence: true
  validates :email, uniqueness: true


end
