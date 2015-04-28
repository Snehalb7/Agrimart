class FarmersController < ApplicationController

    def index
        
        if !(current_user && user_type == "farmer")
            redirect_to root_path
        else
            @posts = Post.where("farmer_id = ?", current_user.id).order('created_at DESC')
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
        flash.notice = "Profile Updated!"
        redirect_to profiles_path
    end
 
end
