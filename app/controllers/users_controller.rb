class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if user.save
      session[:user_id] = user.id
  		redirect_to '/'
  	else
      flash[:error] = "There was a problem logging you in"
      redirect_to '/signup'
  	end
  end
  private
  def user_params
  	params.require(:user).permit(:name, :email, :username, :password, :password_confirmation)
  end
end
