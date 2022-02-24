class BookingsController < ApplicationController
  before_action :set_power, only: %i[new create edit update]
  before_action :set_booking, only: %i[edit update]
  def new
    @booking = Booking.new
    authorize @booking
    authorize @power
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    authorize @power
    @booking.power = @power
    @booking.user = current_user

    if Booking.find_by(user: current_user, power_id: @power)
      flash.alert = "You can't rent the same super power"
      render :new
    else
      @booking.save
      redirect_to bookings_path
    end
  end

  def edit
    authorize @booking
  end

  def update
    authorize @booking
    if @booking.update(booking_params)
      redirect_to bookings_path
    else
      render :new
    end
  end

  private

  def set_power
    @power = Power.find(params[:power_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
