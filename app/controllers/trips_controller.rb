class TripsController < ApplicationController
  def index
    trips_owned_by_user = Trip.where(user: current_user)
    trips_with_memberships = Trip.joins(groups: :memberships)
                                 .where(memberships: { user: current_user })

    @trips = Trip.where(id: trips_owned_by_user).or(Trip.where(id: trips_with_memberships))
  end

  def show
    @trip = Trip.find(params[:id])
    @plans = Plan.where(trip: @trip)
    @markers = @plans.map do |plan|
      { lat: plan.place.latitude, lng: plan.place.longitude }
    end
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
