class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def authenticate_admin_user!
    if !current_user
      redirect_to new_user_session_path
    else
      raise SecurityError unless current_user.is_admin
    end
  end

  rescue_from SecurityError do |exception|
    redirect_to new_user_session_path
  end

end
