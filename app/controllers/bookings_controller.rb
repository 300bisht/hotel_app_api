class BookingsController < ApplicationController
	def create
    @booking = Booking.new(booking_params)
    if @booking.save
      render json: @booking, status: :created
    else
      render json: @booking.errors, status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      render json: @booking
    else
      render json: @booking.errors, status: :unprocessable_entity
    end
  end

  def index
    @bookings = Booking.where(user_id: params[:user_id])
    render json: @bookings
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :hotel_id, :check_in_date, :check_out_date, :room_id)
  end
end
