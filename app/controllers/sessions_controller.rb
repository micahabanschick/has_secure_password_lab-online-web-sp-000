class SessionsController < ApplicationController
  def new
<<<<<<< HEAD
    @user = User.new
=======
>>>>>>> 70d7c4c836894d9fed5c6d660247fce4c32a2f22
  end

  def create
    # binding.pry
<<<<<<< HEAD
    @user = User.find_by(name: params[:user][:name])#.try(:authenticate, params["user"]["password"])
    # return head(:forbidden) unless @user.authenticate(params[:password])
    # @user = User.find_by(name: params[:user][:username])
    if @user == nil
      render :new
    else
      return head(:forbidden) unless @user.authenticate(params[:user][:password])
      # @user.save
      session[:user_id] = @user.id
      redirect_to welcome_homepage_path(@user)
    end
    # return head(:forbidden) unless @user.authenticate(params[:password])
=======
    @user = User.find_or_create_by(user_params)
    # return head(:forbidden) unless @user.authenticate(params[:password])
    session[:user_id] = @user.id
>>>>>>> 70d7c4c836894d9fed5c6d660247fce4c32a2f22
  end

  def destroy
    session.delete :user_id
  end
<<<<<<< HEAD
=======

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end
>>>>>>> 70d7c4c836894d9fed5c6d660247fce4c32a2f22
end
