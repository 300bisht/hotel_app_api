class LocationsController < ApplicationController
	def index
    locations =  params[:query].present? ? Location.where("`name` LIKE ?", "%#{params[:query]}%") : Location.all
    locations = locations.includes(:hotels)
    hotels = []
    locations.each do |location|
        hotels << location.hotels
    end
    render json: hotels.flatten
  end
end
