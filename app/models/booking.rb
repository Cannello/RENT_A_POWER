class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :power
  validates :start_date, :end_date, presence: true
  validate :check_start_date_acceptance?
  validate :check_end_date_acceptance?

  def check_start_date_acceptance?
    errors.add(:start_date, 'must be bigger than today') unless Date.today.to_s <= start_date.to_s
  end

  def check_end_date_acceptance?
    errors.add(:end_date, 'must be bigger or equal to start date') unless start_date.to_s <= end_date.to_s
  end

  # { message: "Start date must be bigger or equal to today's date"}
  # { message: "End date must be bigger than start date"}
end
