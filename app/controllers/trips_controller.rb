class TripsController < ApplicationController
  def index
    @trips = Trip.where(user: @user)
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

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    if @trip.save
      redirect_to trips_path
    else
      render :new
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :date_start, :date_end, :user_id)
  end
end
