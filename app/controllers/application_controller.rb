class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?
  
  def current_user
     return unless session[:user_id]
     @current_user ||= User.find(session[:user_id])
  end
  
  def logged_in?
    
    if current_user
      return true
    end
    
    return false
  end
  
  def require_user
    
    if !current_user.present?
      flash[:error] = "You must be logged in to proceed!"
      redirect_to login_path;
    end
    
    return true;
    
  end #require_user
  
  
end #class
