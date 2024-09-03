class PlacesController < ApplicationController
  def show
    @place = Place.find(params[:id])
  end
end
