class RentsController < ApplicationController
	def create
		@rent = Rent.new(book_params)
		if @rent.save
			flash[:success] = "You rented " @rent.book.name "!"
      		redirect_to @rent.user
      	end
	end

	def book_params
		params.reqire(:rent).permit(:user, :book)
	end

end