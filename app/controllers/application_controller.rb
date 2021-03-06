class ApplicationController < ActionController::Base
  before_action :update_allowed_parameters, if: :devise_controller?

  def after_sign_in_path_for(_resource)
    all_category_path
  end

  def after_sign_up_path_for(_resource)
    all_category_path
  end

  def after_sign_out_path_for(_resource_or_scope)
    user_session_path
  end

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_in) do |u|
      u.permit(:email, :password)
    end
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:fullname, :email, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:fullname, :email, :password_confirmation, :current_password)
    end
  end
end
