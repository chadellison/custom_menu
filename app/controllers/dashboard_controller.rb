class DashboardController < ApplicationController
  before_action :set_user_to_allergies, only: [:show, :edit]
  def show
  end

  def edit
  end

  def update
    @user= User.find(params[:id])

    if @user.update(dashboard_params)
      redirect_to dashboard_path(@user)
    else
      render :edit
    end
  end

  private

  def set_user_to_allergies
    @user = User.find(params[:id])
    @food_allergies = @user.food_allergies.all
  end

  def dashboard_params
    params.require(:user).permit(:username, :email, :password)
  end
end
