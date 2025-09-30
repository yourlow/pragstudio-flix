class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  add_flash_types(:danger)

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def current_user_admin?
    current_user && current_user.admin?
  end

  def require_signin
    unless current_user

      session[:intended_url] = request.url

      redirect_to new_session_url, alert: "Please sign in first!"
    end
  end


  def require_admin
    unless current_user_admin?
      redirect_to movies_url, alert: "Unauthorized access!"
    end
  end

  helper_method :current_user
  helper_method :current_user_admin?
end
