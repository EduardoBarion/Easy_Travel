class PlansController < ApplicationController


  def create
    @place = Place.find(params[:place_id])
    @plan = Plan.new(plan_params)
    @plan.place = @place
    if @plan.save
      render turbo_stream: turbo_stream.replace("plan_form", partial: "places/confirmed")
    else
      render turbo_stream: turbo_stream.replace("plan_form", partial: "places/form", locals: {place: @place, plan: @plan})
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:trip_id)
  end
end
