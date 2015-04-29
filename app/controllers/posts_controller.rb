class PostsController < ApplicationController

    def new
        
        if current_user && user_type == "farmer"
            @post = Post.new
        else
            redirect_to root_path
        end

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
        
        if current_user                                     #logged in or not
            begin
                @posts = Post.where("farmer_id = ?", current_user.id)
                @post = Post.find(params[:id])          
            rescue                                          #if no post exits
                redirect_to root_path
                return
            end
                if is_farmer?                               #if farmer , he shouldn't view other's posts
                begin
                    @posts.find(@post)
                rescue
                    redirect_to farmers_path
                end
            end    
        else
            redirect_to root_path
        end

    end
end
