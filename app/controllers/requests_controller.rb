class RequestsController < ApplicationController

    def new
        @request = Request.new
    end
    
    def create
        @request = Request.new(request_params)
        if @request.save
            redirect_to traders_path
            flash.notice = "Request Created"
        else
            render "new"
        end   
    end
    
    def request_params
        params.require(:request).permit(:title, :quantity ,:bid_price)
    end
    
end
