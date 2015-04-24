class PostsController < ApplicationController

	before_filter :authorize

	def index
		@posts = Post.all
	end
	def show
		@post = Post.find(params[:id])
	end
	def new
		@post = Post.new
		@post.comment = Comment.new
	end
	def create
		@post = Post.new
		if @post.save
			redirect_to posts_path
		else 
			render 'new'
		end
	end
	def edit
		@post = Post.find(params[:id])
	end
end
