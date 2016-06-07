class RegistrationsController < Devise::RegistrationsController

  def create
    super
    resource.create_initial_conversation
  end
end
