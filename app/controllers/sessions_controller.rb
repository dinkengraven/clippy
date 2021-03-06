class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = user.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to @user
    else
      redirect_to login_path
    end
  end
end
