# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  # Pick a unique cookie name to distinguish our session data from others'
  session :session_key => '_psyu612_session_id'

  #functions for logged-in sessions
  def logged_in?
    session[:user_id] != nil
  end
  
  def logged_in_user
    User.find session[:user_id]
  rescue ActiveRecord::RecordNotFound
    nil
  end
  
  def logout
    session[:user_id] = nil
  end
end
