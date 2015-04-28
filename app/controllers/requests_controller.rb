class RequestsController < ApplicationController

 def create
    @post = Post.find(params[:post_id])
    @request = Request.new(req_params)
    @request.tarder_id = current_user.id
    @request.post_id =  params[:post_id]
     
     if @request.save
         redirect_to traders_path
     end     
 end
    
  private
    def req_params
      params.require(:request).permit(:title, :quantity, :bid_price)
    end
    
end
