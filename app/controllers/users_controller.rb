class UsersController < ApplicationController
  def new
    	@user = User.new
  end

  def show
   		@user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
    	flash[:success] = "Welcome to ours' library!"
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
    render 'showAll'
  end
end
