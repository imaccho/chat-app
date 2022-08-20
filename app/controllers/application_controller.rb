class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configurer_permitted_paremeters, if: :devise_controller?

  private
  def configurer_permitted_paremeters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
