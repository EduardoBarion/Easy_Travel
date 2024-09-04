class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
    @plans = Plan.where(trip: @trip)
  end

  def create
    @plan = Plan.find(params[:plan_id])
    @trip = Trip.new(trip_params)
    @trip.plan = @trip
    if @trip.save
      render turbo_stream: turbo_stream.replace("trip_form", partial: "trips/confirmed")
    else
      render turbo_stream: turbo_stream.replace("trip_form", partial: "trips/form", locals: { plan: @plan, trip: @trip })
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:user_id)
  end
end
