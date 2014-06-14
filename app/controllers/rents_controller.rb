class RentsController < ApplicationController
  def new
  end

  def create
  	if Rent.exists?(params[:id])
   	  redirect_to books_path, alert: "Not this time"
    end

  	@rent = current_user.rents.build(rent_params)
  	if @rent.save
  	  flash[:success] = "Book rented!"
  	else
   	  flash[:error] = "Not this time"	
   	end
  	redirect_to books_path
  end

  def destroy
  	rent = current_user.rents.find(params[:id])
  	flash[:success] = "Book was given back!"
  	rent.destroy
  	redirect_to current_user
  end

  def rent_params
	 params.require(:rent).permit(:book_id)
  end

end	