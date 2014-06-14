module BooksHelper
  def has_cover?(book)
    !book.read_attribute(:cover_file_name).nil?
  end
end