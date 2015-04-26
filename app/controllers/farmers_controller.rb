class FarmersController < ApplicationController

    
    def create
       
        @farmer = Farmer.new(farmer_params)      
        if @farmer.save
            redirect_to root_path
        else
            @trader = Trader.new    #used for rendering trader form
            render "signups/new"
        end
 
    end

    def farmer_params
        params.require(:farmer).permit(:name, :email, :password, :password_confirmation, :district_id, :taluka_id, :address, :pincode, :phone_no)
    end


end
