class BooksController < ApplicationController
	include UsersHelper
	def new
		if !is_admin?
			redirect_to books_path
		end
		@book = Book.new
	end

	def show
		@book = Book.find(params[:id])
	end

	def create
		if !is_admin?
			redirect_to books_path
		end

		@book = Book.new(book_params)

		pic = params[:book][:cover]

		# original_filename
		# 	^ to dzielisz po kropkach i ostatni element rozszerzenie

		# tworzenie nazwy# zapis nazwy



		if @book.save
		
			FileUtils.copy(pic.tempfile, 
				"#{Rails.root}/public/covers/#{@book.id.to_s}.jpg")

			# na koncu wsadzasz rozszerzenie


			flash[:success] = @book.name + " added!"
      		redirect_to @book
      	else
      		render 'new'
      	end
	end

	def book_params
		params.require(:book).permit(:name, :author)
	end

	def index
	    @books = Book.all
	end	
end
