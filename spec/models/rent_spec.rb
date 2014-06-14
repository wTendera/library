require 'spec_helper'

describe Rent do
  it "Checking single rent for user" do
    book = Book.new
    book.name = "title"
    book.author = "author"
    book.save

    user = User.new
    user.name = "name"
    user.email = "email@email.com"
    user.password = "password"
    user.password_confirmation = "password"
    user.save

    rent = Rent.new
    expect(rent.valid?).to eq false

    rent.book_id = book.id
    rent.user_id = user.id

    rent.valid?
    puts rent.errors.messages

    expect(rent.valid?).to eq true

  end
end
