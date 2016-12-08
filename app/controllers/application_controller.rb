class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  # See section on Strong Parameters: https://github.com/plataformatec/devise
  def configure_permitted_parameters
    added_attrs = [:name, :username]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  end
end



