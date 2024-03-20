class LocationsController < ApplicationController
	def index
    location = Location.find_by(id: params[:location_id])
    render json: location.hotels
  end
end
