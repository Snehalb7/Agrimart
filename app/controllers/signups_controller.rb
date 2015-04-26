class SignupsController < ApplicationController
    
    def new
        @farmer = Farmer.new
        @trader = Trader.new
    end
    
     
end
