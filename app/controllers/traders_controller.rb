class TradersController < ApplicationController

    def new
        @trader = Trader.new
    end
    
    def create
       
        @trader = Trader.new(trader_params)      
        if @trader.save
            redirect_to root_path ,notice=>"success"
        else
            render "new"
        end
 
    end

    def trader_params
        params.require(:trader).permit(:name, :email, :password, :password_confirmation, :district_id, :taluka_id, :pincode, :address)
    end
    
end
