class BookingsController < ApplicationController
  def new
    @bookings = Booking.new
    @power = Power.find(params[:power_id])
  end

  def create

  end
end
