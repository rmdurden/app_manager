class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])    # Not the final implementation!
    if @user.save
      flash[:success] = "Welcome to App Manager!"
      redirect_to root_url 
    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :username, :password,
                                   :password_confirmation)
    end

end
