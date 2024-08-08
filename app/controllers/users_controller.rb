class UsersController < ApplicationController
  #skip_before_action :require_login, only: %i[new,create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User successfully created!"
      redirect_to root_path
    else
      flash[:alert] = "There was an error creating the user."
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
