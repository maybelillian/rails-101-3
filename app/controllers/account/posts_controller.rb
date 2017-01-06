class Account::PostsController < ApplicationController
  before_action :authenticate_user!
  def index
  	@posts = current_user.posts
  	
  end

 #  def show

	# @posts = current_user.posts
		
 #  end

 def edit
		@group = Group.find(params[:group_id])
		@post = Post.find(params[:id])
end

def update
		@group = Group.find(params[:group_id])
		@post = Post.find(params[:id])

		if @post.update(post_params)
			redirect_to account_post_path, notice: "Update Success"
		else
			render :edit
			
		end
		
end

end
