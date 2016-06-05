class UsersController < ApplicationController
  before_action :authenticate_user!

  def dashboard
  end

  def update
    current_user.update(user_params)
    redirect_to dashboard_user_path
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :birth_day,
      :birth_month,
      :birth_year,
      :address,
      :city,
      :state,
      :zipcode
    )
  end
end
