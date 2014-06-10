class BooksController < ApplicationController
	def new
		@book = Book.new
	end

	def show
		@book = Book.find(params[:id])
	end

	def create
		@book = Book.new(book_params)
		if @book.save
			flash[:success] = @book.name + " added!"
      		redirect_to @book
      	else
      		render 'new'
      	end
	end

	def book_params
		params.require(:book).permit(:name)
	end

	def index
	    @books = Book.all
	end
end