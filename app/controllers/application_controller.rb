class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    helper_method :current_user
    helper_method :user_type
    
    private
    
    def current_user
        if user_type == "farmer"
        @current_user ||=Farmer.find(session[:user_id]) if session[:user_id]
        else
        @current_user ||=Trader.find(session[:user_id]) if session[:user_id]    
        end
    end
    
    def user_type
        @user_type = session[:user_type]
    end


end
