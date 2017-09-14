class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before action :configure_permitted_paramters, if: :devise_controller?

  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :username, :age, :bio])
  	devise_parameter_sanitizer.permit(:account_update, keys: [:name, :username, :age, :bio])
  end	
end
