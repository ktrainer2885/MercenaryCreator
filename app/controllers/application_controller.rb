class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true, with: :exception
  
  def after_sign_in_path_for(resource_or_scope)
    return '/dashboard/index'
   end
end
