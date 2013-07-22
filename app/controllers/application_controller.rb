class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  before_filter :require_login

  protected

  def auth_path
    return "/auth/developer" if Rails.env.development? && !google_auth_enabled?
    "/auth/gplus"
  end

  def google_auth_enabled?
    Secret.to_h.has_key?(:google_key)
  end

  def require_login
    redirect_to auth_path unless current_user
  end

  def current_user
    @current_user ||= User.where(id: session[:user_id]).first
  end
  helper_method :current_user

end
