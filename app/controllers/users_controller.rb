class UsersController < ApplicationController
  def index 
  	@users = User.all
  end

  def show
  	@user = User.find params[:id]
  end

  def new
  	@user = User.new
  end

  def edit
  end

  def create
  	user = User.create(params[:user])

  	if user 
  	redirect_to users_path, status: 303
  end

  def destroy
  	user = User.find params[:id]
    user.destroy
    
    redirect_to users_path, status: 303
  end

  def update
  	redirect_to users_path, status: 303
  end
end
