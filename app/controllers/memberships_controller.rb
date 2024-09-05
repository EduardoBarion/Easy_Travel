class MembershipsController < ApplicationController
  def new
    @group = Group.find(params[:group_id])
    @membership = Membership.new
    @users = User.pluck(:id, :email)
  end

  def create
    @membership = Membership.new(membership_params)
    @group = Group.find(params[:group_id])
    @membership.group = @group
    if @membership.save
      redirect_to trip_path(@group.trip)
    else
      render :new
    end
  end

  private

  def membership_params
    params.require(:membership).permit(:user_id)
  end
end
