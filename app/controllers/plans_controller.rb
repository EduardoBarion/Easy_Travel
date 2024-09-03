class PlansController < ApplicationController

  def create
    @place = Place.find(params[:places_id])
    @plan = Plan.new(plan_params)
    @plan.place = @place
    @place = current_place
    if @plan.save
      render turbo_stream: turbo_stream.replace("plan_form", partial: "plans/confirmed")
    else
      render turbo_stream: turbo_stream.replace("plan_form", partial: "plans/form", locals: {places: @places, plan: @plan})
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:suggestion)
  end
end
