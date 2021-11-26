class UsersController < ApplicationController
  def profile
    @user = current_user
    @art = @user.arts
  end

  def show
    redirect_to profile_path if (params[:id]) == current_user.id
    @user = User.find(params[:id])
    @art = @user.arts
  end


end
