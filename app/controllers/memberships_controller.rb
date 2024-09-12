class MembershipsController < ApplicationController
  def new
    @group = Group.find(params[:group_id])
    @membership = Membership.new
  end

  def create
    @membership = Membership.new(membership_params)
    @group = Group.find(params[:group_id])
    @membership.group = @group
    if @membership.save
      render turbo_stream: turbo_stream.replace("membership_form", partial: "groups/confirmed", locals: { trip: @group.trip })

      Turbo::StreamsChannel.broadcast_append_to(
        "user_#{@membership.user.id}",
        target: "trips",
        partial: "trips/trip", locals: { trip: @group.trip })
    else
      render turbo_stream: turbo_stream.replace("membership_form", partial: "groups/form", locals: { group: @group, membership: @membership })
    end
  end

  private

  def membership_params
    params.require(:membership).permit(:user_id)
  end
end
