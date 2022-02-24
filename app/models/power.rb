class Power < ApplicationRecord
  has_one_attached :photo
  has_many :bookings
  has_many :users, through: :bookings
  validates :name, :description, uniqueness: true
  validates :description, length: { maximum: 475 }
end
