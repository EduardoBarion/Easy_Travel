class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end

  private

  def country_params
    params.require(:country).permit(:photo)
  end
end
