class UsersController < ApplicationController

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end



  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

private

def user_params
  params.require(:user).permit(:name, :introduction, :profile_image)
end

end
