class HotelsController < ApplicationController
	def index
    hotels = Hotel.where(user_id: params[:user_id])
    render json: hotels
  end

  def list_rooms
    hotel = Hotel.where(hotle_id: params[:hotel_id])
    render json: hotel.rooms
  end
end
