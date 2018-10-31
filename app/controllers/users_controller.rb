class UsersController < ApplicationController
  
  def new
  	puts params
  	@new_user = User.new
  end

  def create  	
  	@new_user = User.new
  	@new_user['username'] = params[:username]
  	@new_user['email'] = params[:email]
  	@new_user['bio'] = params[:bio]
  	@new_user.save
  	redirect_to user_path(User.last)
  end

  def show
  	@user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

end
