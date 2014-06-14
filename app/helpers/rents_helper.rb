module RentsHelper
  def is_rented(book)
    Rent.exists?(user: current_user, book: @book)
  end
end