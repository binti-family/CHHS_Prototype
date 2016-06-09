class RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  def create
    super
    resource.create_initial_conversation
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end
end
