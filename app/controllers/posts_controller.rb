class PostsController < ApplicationController

	
	def index
		@posts = Post.all		
		
	end

# 	NEW action	
	def new 
		@post = Post.new	
	end	
	
# 	create action
	def create
		@post = Post.new(posts_params)
		if @post.save
			flash[:notice] = "Post are seccufully created"
			redirect_to post_path(@post)
		else
			render 'new'
		end		
		
	end	

# 	SHOW action
	def show
		@post = Post.find(params[:id])
	end	
	
# 	EDIT action
	
	def edit
		@post = Post.find(params[:id])
	end	
	
# 	UPDATE action
	def update
		@post = Post.new
			if @post.update(posts_params)
				flash[:notice] = "Post succefully updated"
				redirect_to post_path(@post)
			else 
				render 'edit'
			end		
	end	

# 	DELETE action
	def destroy
		@post = Post.find(params[:id])
			@post.destroy
			flash[:notice] = "Post succefully deleted"
			redirect_to posts_path(@post)
	end
	private
	def posts_params
		
		params.require(:post).permit(:title, :description)
			
	end	
	
	
	
	
	
end	