class PostsController < ApplicationController

    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new(post_params)
        @post.farmer_id = current_user.id
        @post.status = "Active"
        if @post.save
            redirect_to farmers_path
            flash.notice = "Post Created"
        else
            render "new"
        end
            
    end

    def post_params
        params.require(:post).permit(:title, :crop_name_id, :crop_category_id, :quantity ,:price)
    end
    
    def show
        @post = Post.find(params[:id])
    end
end
