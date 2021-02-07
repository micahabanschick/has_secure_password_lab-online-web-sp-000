class UsersController < ApplicationController
  def new
  end

  def create
<<<<<<< HEAD
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to welcome_homepage_path(@user)
    else
      redirect_to users_new_path
    end
=======
    User.create(user_params)
>>>>>>> 70d7c4c836894d9fed5c6d660247fce4c32a2f22
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
