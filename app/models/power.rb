class Power < ApplicationRecord
  include PgSearch::Model

  has_one_attached :photo
  has_many :bookings
  has_many :users, through: :bookings
  validates :name, :description, uniqueness: true
  validates :description, length: { maximum: 475 }

  pg_search_scope :search_by_name_and_description,
    against: %i[name description],
    using: {
      tsearch: { prefix: true }
    }
end
