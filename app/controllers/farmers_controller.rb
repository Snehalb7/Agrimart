class FarmersController < ApplicationController

    def index
        if session[:farmer_id]
            @user = Farmer.find(session[:farmer_id])
        elsif session[:trader_id]
            @user = Trader.find(session[:trader_id])
        else
            flash.notice = "Session Expired"
            redirect_to root_path
        end
    end
    
    def create
       
        @farmer = Farmer.new(farmer_params)      
        if @farmer.save
            redirect_to root_path
        else
            @trader = Trader.new    #used for rendering trader form
            render "signups/index", layout: false  
        end
    end

    def farmer_params
        params.require(:farmer).permit(:name, :email, :password, :password_confirmation, :district_id, :taluka_id, :address, :pincode, :phone_no)
    end

    def update
        @user = Farmer.find(params[:id])
        @user.update(farmer_params)
        flash.notice = "Profile '#{@user.name}' Updated!"
        redirect_to profiles_path
    end

end
