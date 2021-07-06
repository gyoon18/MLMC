class ApplicationController < ActionController::Base
  helper_method :current_user, :addEvent
  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

  def addEvent(event)
    @event = event
    puts current_user.id
  end
end
