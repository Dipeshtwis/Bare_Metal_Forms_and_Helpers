class UsersController < ApplicationController
  include UsersHelper
  
  def new
  end

  def create
  	@user = User.new(username: params[:username], email: params[:email], password: params[:password])
    #@user = User.new(user_params)

    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end
end
