class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    User.create(user_params)
    # flash[:success] = "Account created!"
    redirect_to login_path
  end

  def show
    @user = @current_user
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :name)
  end

end
