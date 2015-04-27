class ProfilesController < ApplicationController

    def index
        if current_user
            @user = current_user
        else
            redirect_to root_path
        end
    end
    
    def edit 
        if current_user
            @user = current_user
        else
            redirect_to root_path
        end
    end
    
    def show
    end
    
end
