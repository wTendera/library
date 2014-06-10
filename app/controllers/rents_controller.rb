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

	def rent_params
		params.require(:rent).permit(:book_id)
	end
end	