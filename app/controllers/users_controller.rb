class UsersController < ApplicationController
  before_action :authenticate_user!

  def update
    if current_user.update(user_params)
      flash[:notice] = t("user.profile.saved")
      redirect_to messages_path
    else
      flash[:error] = current_user.errors.full_messages.join(", ")
      render :edit
    end
  end

  def edit
    current_user.state ||= "CA"
  end

  private

  def user_params
    params.require(:user).permit(
      :address,
      :city,
      :email,
      :first_name,
      :last_name,
      :phone_number,
      :state,
      :zipcode
    )
  end
end
