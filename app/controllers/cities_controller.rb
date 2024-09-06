class CitiesController < ApplicationController
  def index
    @country = Country.find(params[:country_id])
    @cities = City.where(country: @country)
  end

  private

  def city_params
    params.require(:city).permit(:photo)
  end
end
