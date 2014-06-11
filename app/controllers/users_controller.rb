class UsersController < ApplicationController
  def new
    	@user = User.new
  end

  def show
   		@user = User.find(params[:id])
  end

  def create  
    @user = User.new(user_params)
    if User.count == 0
      @user.update_attribute(:admin, true)
    end
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to our library"
      redirect_to @user
    else
      render 'new'
    end

  end

  def user_params
  		params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
  end
  
  def index
    @users = User.all
  end

  
end
