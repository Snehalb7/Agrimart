class TradersController < ApplicationController
        def index
        if session[:farmer_id]
            @user = Farmer.find(session[:farmer_id])
        elsif session[:trader_id]
            @user = Trader.find(session[:trader_id])
        else
            redirect_to root_path
        end
    end
    
    def create
       
        @trader = Trader.new(trader_params)      
        if @trader.save
            redirect_to root_path
        else
            @farmer = Farmer.new   #used for rendering frm form
            render "signups/index" , layout: false
        end
 
    end

    def trader_params
        params.require(:trader).permit(:name, :email, :password, :password_confirmation, :district_id, :taluka_id, :address, :pincode, :license_no, :phone_no)
    end
    
    def update
        @user = Trader.find(params[:id])
        @user.update(trader_params)
        flash.notice = "Profile '#{@user.name}' Updated!"
        redirect_to profiles_path
    end

end
