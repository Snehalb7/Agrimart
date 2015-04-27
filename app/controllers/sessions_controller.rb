class SessionsController < ApplicationController
<<<<<<< HEAD
     layout :false
=======
  
  layout :false
>>>>>>> c0db25eefa1d92d648b89c380e80e45112cb561b
    
  def new
  end

    
  def create
      
      a=params[:status]
      
      session[:who] = a
      
<<<<<<< HEAD
      if a =="farmer"
        
        farmer = Farmer.authenticate(params[:email],params[:password])
        if farmer
          session[:farmer_id] = farmer.id
=======
      if a=="farmer"
        
        farmer = Farmer.authenticate(params[:email],params[:password])
        if farmer
          session[:user_id] = farmer.id
>>>>>>> c0db25eefa1d92d648b89c380e80e45112cb561b
          redirect_to farmers_path
        else
          flash.now.alert = "invalid email or password #{a}"
          render "new"
        end

        else 
        trader = Trader.authenticate(params[:email],params[:password])
        if trader
<<<<<<< HEAD
          session[:trader_id] = trader.id
=======
          session[:user_id] = trader.id
>>>>>>> c0db25eefa1d92d648b89c380e80e45112cb561b
          redirect_to traders_path
        else
          flash.now.alert = "invalid email or password #{a}"
          render "new"
        end

        end
  end
    
      def destroy
        session[:farmer_id] = nil
<<<<<<< HEAD
        session[:farmer_id] = nil
        redirect_to 
      end


=======
        redirect_to log_in_path 
      end

>>>>>>> c0db25eefa1d92d648b89c380e80e45112cb561b
end
