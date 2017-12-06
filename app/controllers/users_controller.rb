class UsersController < ApplicationController

	def index
  		@users = User.find(1).sports.find(1).teams.find(12).name
	end

	def show
		@user = User.find(current_user.id)
	end

	def new
	end

	def create
	  	user = User.new(user_params)
		if user.save
		    session[:user_id] = user.id
		    redirect_to '/'
		else
		    redirect_to '/signup'
		end
	end

	private
	  	def user_params
			params.require(:user).permit(:username, :email, :password, :password_confirmation)
		end

end
