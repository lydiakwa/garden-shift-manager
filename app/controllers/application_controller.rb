class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :redirect_unless_signed_in

  protected
  def after_sign_out_path_for(_resource_or_scope)
    "/users/sign_in"
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :first_name, :last_name, :telephone ])
  end

  def redirect_unless_signed_in
    unless user_signed_in?
      redirect_to "/users/sign_in"
    end
  end
end
