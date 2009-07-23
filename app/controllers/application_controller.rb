# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  require 'relaxdb'
  RelaxDB.configure(:host => 'banux.helheim.net', :port => 5984, :design_doc => "app")
  RelaxDB.use_db('agnovi_party')
  RelaxDB.enable_view_creation
  
end
