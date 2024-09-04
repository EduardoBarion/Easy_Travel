class CitiesController < ApplicationController
  def index
    @country = Country.find(params[:country_id])
    @cities = City.where(country: @country)
  end
end
