# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  before_filter :require_login

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  private 
  def require_login 
    unless logged_in? 
      flash[:error] = "You must be logged in to access this section" 
      #redirect_to new_login_url # halts request cycle 
      render(:file => File.join(Rails.root, 'public/403.html'), :status => 403, :layout => false)
    end 
  end 

# The logged_in? method simply returns true if the user is logged # in and false otherwise. It does this by "booleanizing" the # current_user method we created previously using a double ! operator. # Note that this is not common in Ruby and is discouraged unless you # really mean to convert something into true or false. 

  def logged_in? 
    request.env['HTTP_REFERER'].start_with? 'http://artannika.com' or request.env['HTTP_REFERER'].start_with? 'http://localhost:3001'
  end
end
