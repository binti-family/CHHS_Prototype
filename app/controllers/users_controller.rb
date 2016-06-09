class UsersController < ApplicationController
  before_action :authenticate_user!

  def update
    current_user.update(user_params)
    redirect_to messages_path
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :address,
      :city,
      :state,
      :zipcode
    )
  end
end
