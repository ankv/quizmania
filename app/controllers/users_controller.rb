class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(users_params)
    render 'show'
  end

  def create
    @user = User.new(users_params)
    if @user.save
      redirect_to @user
    end
  end

  private

  def users_params
    params.require(:user).permit(:name, :email, :password,
                                :password_confirmation)
  end
end
