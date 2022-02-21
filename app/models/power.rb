class Power < ApplicationRecord
  has_many :bookings
  has_many :users, throught: :bookings
end
