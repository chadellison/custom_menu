class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Your account has been created"
      redirect_to dashboard_path(@user.id)
    else
      flash.now[:error] = "Invalid entry"
      render :new
    end
  end

  private

    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation, :email)
    end
end
