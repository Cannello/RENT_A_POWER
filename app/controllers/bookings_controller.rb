class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @power = Power.find(params[:power_id])
  end

  def create
    @booking = Booking.new(set_booking)
    @power = Power.find(params[:power_id])
    @booking.power = @power
    @booking.user = current_user

    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  private

  def set_booking
    params.require(:booking).permit(:start_date, :end_date)
  end
end
