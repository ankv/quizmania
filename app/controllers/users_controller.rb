class UsersController < ApplicationController
  before_action :require_login, only: [:edit, :update, :show]

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

  def require_login
    unless logged_in? and current_user.id.eql?(params[:id].to_i)
      redirect_to root_url
    end
  end
end
