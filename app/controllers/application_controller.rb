class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  helper_method :current_driver
  helper_method :current_parker

  def current_driver
    @current_driver ||= Driver.find(session[:driver_id]) if session[:driver_id]
  end

  def current_parker
    @current_parker ||= Parker.find(session[:parker_id]) if session[:parker_id]
  end

end
