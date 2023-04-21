class UsersController < ApplicationController
  before_action :set_user, only: [:show, :card]

  def show
  end

  def card
    render partial: 'users/card', locals: { user: @user }
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
