class PlacesController < ApplicationController
  before_action :set_city, only: %i[index]

  def index
    @places = Place.where(city: @city)
  end

  def show
    @place = Place.find(params[:id])
  end

  private

  def set_city
    @city = City.find(params[:city_id])
  end
end
