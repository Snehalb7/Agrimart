class SearchesController < ApplicationController
        def index
        if session[:farmer_id]
            @users = Trader.all
        elsif session[:trader_id]
            @users = Farmer.all
        else
            redirect_to root_path
        end
    end

end
