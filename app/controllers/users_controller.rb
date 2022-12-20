class UsersController < ApplicationController
    WEBHOOK_URL = 'https://hooks.slack.com/services/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'

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to user_path
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :sex, :age)
    end
end
