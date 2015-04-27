class ProfilesController < ApplicationController
        def index
        if session[:farmer_id]
            @user = Farmer.find(session[:farmer_id])
        elsif session[:trader_id]
            @user = Trader.find(session[:trader_id])
        else
            redirect_to root_path
        end
    end
    
    def edit 
        if session[:farmer_id]
            @user = Farmer.find(session[:farmer_id])
        elsif session[:trader_id]
            @user = Trader.find(session[:trader_id])
        else
            redirect_to root_path
        end
    end
    
    def show
    end


end
