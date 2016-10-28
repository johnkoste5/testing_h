class UsersController < ApplicationController
	before_action :get_user, only: [:show, :edit, :destroy, :update]

	def index
		@users = User.all
	end

	def new

	end

	def show
	end

	def create
		u = User.create user_params
		if u.errors.count > 0
			flash[:errors] = u.errors.full_messages
			redirect_to new_user_path
		else
			redirect_to root_path
		end
	end

	def destroy
		@user.destroy
		redirect_to root_path
	end

	def edit
	end

	def update
		@user.update user_params
		if @user.errors.count > 0
			redirect_to "/users/#{u.id}/edit"
		else
			redirect_to root_path
		end
	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password)
	end	

	def get_user
		@user = User.find(params[:id])
	end
end
