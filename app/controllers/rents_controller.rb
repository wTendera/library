class RentsController < ApplicationController
	def new
	end
	
	def create
		@rent = current_user.rents.build(rent_params)
		if @rent.save
			flash[:success] = "Book rented!"
		else
			flash[:fail] = "Not this time"	
		end
      	redirect_to books_path
	end

	def destroy
		rent = current_user.rents.find(params[:id])
		if rent == nil
			flash[:fail] = "Damn!"
		else
			flash[:success] = "Book was given back!"
			rent.destroy
		end
		redirect_to current_user
	end

	def rent_params
		params.require(:rent).permit(:book_id)
	end

end	