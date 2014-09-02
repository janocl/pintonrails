class UsersController < ApplicationController
  before_action :set_user, only: [:Users, :Email]

  def Users
    @users = User.all
  end

  def Email
    @email = @users.where(:email)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end