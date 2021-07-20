class ApplicationController < ActionController::Base
  helper_method :current_user, :addEvent
  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

  def addEvent(event)
    @event = event
    @calendar = Calendar.new(@event.attributes)
    @calendar.user_id = session[:user_id]
    @calendar.save
  end
end
