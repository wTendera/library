class BorrowsController < ApplicationController
	def create
		@borrow = Borrow.new(book_params)
		if @boorrow.save
			flash[:success] = "You borrowed " @borrow.book.name "!"
      		redirect_to @borrow.user
      	end
	end

	def book_params
		params.reqire(:borrow).permit(:user, :book)
	end

end