class AddStartAndEndDateToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :start_date, :date, null: false
    add_column :bookings, :end_date, :date, null: false
  end
end
