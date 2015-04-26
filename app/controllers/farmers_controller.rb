class FarmersController < ApplicationController

    def new
        @farmer = Farmer.new
    end
    
    def create
       
        @farmer = Farmer.new(farmer_params)      
        if @farmer.save
            redirect_to root_path ,notice=>"success"
        else
            render "new"
        end
 
    end

    def farmer_params
        params.require(:farmer).permit(:name, :email, :password, :password_confirmation, :district_id, :taluka_id, :pincode, :address)
    end


end
