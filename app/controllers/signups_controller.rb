class SignupsController < ApplicationController
    
        layout :false
    
    def new
        @farmer = Farmer.new
        @trader = Trader.new
    end
    
    def index
        @farmer = Farmer.new
        @trader = Trader.new
    end    
 

end
