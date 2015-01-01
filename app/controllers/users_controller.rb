class UsersController < ApplicationController

  def show
    if !current_user.eql?(nil) && current_user.id.eql?(params[:id].to_i)
      @user = User.find(params[:id])
    else
      render :text => "Not for you"
    end
  end

  def new
    @user = User.new
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
