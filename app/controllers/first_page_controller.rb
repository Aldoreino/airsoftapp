class FirstPageController < ApplicationController
	def index
	end
	def new
	end
	def create
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			flash[:success] = "Thanks for logging in"
			redirect_to '/'
		else
			flash[:danger] = "There was a problem logging you in"
			redirect_to '/login'
		end
	end
	def destroy
		session[:user_id] = nil
		redirect_to '/login'
	end
end
