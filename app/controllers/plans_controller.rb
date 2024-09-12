class PlansController < ApplicationController
  def create
    @place = Place.find(params[:place_id])
    @plan = Plan.new(plan_params)
    @plan.place = @place
    if @plan.save
      markers = @plan.trip.plans.map do |plan|
        { lat: plan.place.latitude, lng: plan.place.longitude }
      end
      render turbo_stream: turbo_stream.replace("plan_form", partial: "places/confirmed")

      Turbo::StreamsChannel.broadcast_append_to(
        "trip_#{@plan.trip.id}",
        target: "cards",
        partial: "trips/cardattraction", locals: { plan: @plan })

      Turbo::StreamsChannel.broadcast_replace_to(
        "trip_#{@plan.trip.id}",
        target: "map",
        partial: "trips/map", locals: { trip: @plan.trip, markers: markers })
    else
      render turbo_stream: turbo_stream.replace("plan_form", partial: "places/form", locals: { place: @place, plan: @plan })
    end
  end

  def destroy
    @plan = Plan.find(params[:id])
    @plan.destroy
    markers = @plan.trip.plans.map do |plan|
      { lat: plan.place.latitude, lng: plan.place.longitude }
    end

    Turbo::StreamsChannel.broadcast_remove_to(
      "trip_#{@plan.trip.id}",
      target: "plan-#{@plan.id}")

    Turbo::StreamsChannel.broadcast_replace_to(
      "trip_#{@plan.trip.id}",
      target: "map",
      partial: "trips/map", locals: { trip: @plan.trip, markers: markers })
  end

  private

  def plan_params
    params.require(:plan).permit(:trip_id)
  end
end
