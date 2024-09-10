class PlacesController < ApplicationController
  before_action :set_city, only: %i[index]

  def index
    @places = Place.where(city: @city)
  end

  def show
    @place = Place.find(params[:id])
    @plan = Plan.new
    @markers = [{ lat: @place.latitude, lng: @place.longitude }]
    @trip = @plan.trip
  end

  private

  def place_params
    params.require(:place).permit(:photo)
  end

  def set_city
    @city = City.find(params[:city_id])
  end
end
