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
	end
	def create
		@post = Post.new
	end
	def edit
		@post = Post.find(params[:id])
	end
end
