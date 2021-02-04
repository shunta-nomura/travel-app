class UsersController < ApplicationController
  def show
  end

  def edit
    @user = current_user
  end

  def update
    current_user.update(favorite_params)
    redirect_to user_path
  end
  private

  def favorite_params
    params.require(:user).permit(:image)
  end
end