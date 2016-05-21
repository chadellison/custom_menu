class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      flash[:message] = "Logged in as #{@user.username.capitalize}"
      redirect_to root_path
    else
      flash.now[:error] = "Try again: Invalid username or password"
      render :new
    end
  end
end
