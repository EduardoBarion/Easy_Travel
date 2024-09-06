class UsersController < ApplicationController
  def user_params
    params.require(:user).permit(:photo)
  end
end
