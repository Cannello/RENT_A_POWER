class User < ApplicationRecord
  has_many :bookings
  has_many :powers, through: :bookings
  has_one_attached :avatar
  validates :email, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
