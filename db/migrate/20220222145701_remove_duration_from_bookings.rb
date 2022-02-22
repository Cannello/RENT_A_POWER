class RemoveDurationFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :start_date, :date
    remove_column :bookings, :end_date, :date
  end
end
