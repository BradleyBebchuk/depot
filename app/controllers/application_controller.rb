# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  #pick a unique cookie name to distinguish our session data from others'
  session :session_key => '_depot_session_id'
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
private

  def authorize
    unless User.find_by_id(session[:user_id])
      session[:original_uri] = request.request_uri
      flash[:notice] = "Please log in"
      redirect_to(:controller => "login", :action => "login")
    end
  end
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
