class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def show
  end

  def create
    @user = User.new(user_params)
    p @user
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private
    def user_params
      params.require(:user).permit(:username, :password, :photo)
    end

    def set_user
      @user = User.find(params[:id])
    end
end
