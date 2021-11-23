class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.bike = @bike
    if @booking.save
      redirect_to bike_path(@bike)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_day, :finish_day)
  end
end
