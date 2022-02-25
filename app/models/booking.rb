class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :power
  validates :start_date, :end_date, presence: true
  validate :check_start_date_acceptance?
  validate :check_end_date_acceptance?
  validate :you_already_booked_power?
  # before_destroy :can_destroy?, prepend: true

  def check_start_date_acceptance?
    errors.add(:start_date, 'must be bigger than today') unless Date.today.to_s <= start_date.to_s
  end

  def check_end_date_acceptance?
    errors.add(:end_date, 'must be bigger or equal to start date') unless start_date.to_s <= end_date.to_s
  end

  def you_already_booked_power?
    booking = Booking.find_by(user_id: user_id, power_id: power_id)
    unless booking.nil? || start_date.nil? || end_date.nil?
      if (booking.start_date.to_time.to_i..booking.end_date.to_time.to_i).overlaps?((start_date.to_time.to_i..end_date.to_time.to_i))
        errors.add(:power_id)
      end
    end
  end

  # private

  # def can_destroy?
  #   if self.end_date = Date.today
  #     errors[:base] << "Cannot delete past bookings"
  #     throw :abort
  #   elsif self.start_date.to_time < Date.today + 2
  #     errors[:base] << "Cannot delete bookings starting in 2 days"
  #   end
  # end
end
