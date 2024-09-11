class PlacesController < ApplicationController
  before_action :set_city, only: %i[index]

  def index
    @places = Place.where(city: @city)
  end

  def show
    @memberships = Membership.where(user: current_user)
    @memberships.each do |membership|
      @id_groups = membership.group_id
    end
    @groups = Group.where(id: @id_groups)
    @groups.each do |group|
      @id_trips = group.trip_id
    end
    @trips = Trip.where(id: @id_trips)
    @place = Place.find(params[:id])
    @plan = Plan.new
    @markers = [{ lat: @place.latitude, lng: @place.longitude }]
  end

  private

  def place_params
    params.require(:place).permit(:photo)
  end

  def set_city
    @city = City.find(params[:city_id])
  end
end
