class TradersController < ApplicationController

    def new
        @trader = Trader.new
    end
    
    def create
       
        @trader = Trader.new(trader_params)      
        if @trader.save
            redirect_to root_path
        else
            @farmer = Farmer.new   #used for rendering frm form
            render "signups/new" , layout: false
        end
 
    end

    def trader_params
        params.require(:trader).permit(:name, :email, :password, :password_confirmation, :district_id, :taluka_id, :address, :pincode, :license_no, :phone_no)
    end
    
end
