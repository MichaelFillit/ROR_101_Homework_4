class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def show
		user_id = params[:id]
		@user = User.find(user_id)
	end
	def destroy
		user = User.find(params[:id])
		user.delete
		redirect_to users_path
	end
end
