class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
    @plans = Plan.where(trip: @trip)

  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to root_path
  end
end
