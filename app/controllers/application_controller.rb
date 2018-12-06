class ApplicationController < ActionController::Base
  helper_method :current_user


  def current_user
    @current_user ||=User.find(sessions[:user_id]) if sessions[:user_id]
  end
  
end
