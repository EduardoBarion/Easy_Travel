class GroupsController < ApplicationController
  def create
    @group = Group.new(group_params)
    if @group.save
      Membership.create(group: @group, user: current_user)
      redirect_to trips_path
    else
      render :new
    end
  end

  private

  def group_params
    params.require(:group).permit(:trip_id)
  end
end
