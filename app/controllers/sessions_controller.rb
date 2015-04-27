class SessionsController < ApplicationController
     layout :false
    
  def new
  end

    
  def create
      
      a=params[:status]
      
      session[:who] = a
      
      if a =="farmer"
        
        farmer = Farmer.authenticate(params[:email],params[:password])
        if farmer
          session[:farmer_id] = farmer.id
          redirect_to farmers_path
        else
          flash.now.alert = "invalid email or password #{a}"
          render "new"
        end

        else 
        trader = Trader.authenticate(params[:email],params[:password])
        if trader
          session[:trader_id] = trader.id
          redirect_to traders_path
        else
          flash.now.alert = "invalid email or password #{a}"
          render "new"
        end

        end
  end
    
      def destroy
        session[:farmer_id] = nil
        session[:farmer_id] = nil
        redirect_to 
      end


end
