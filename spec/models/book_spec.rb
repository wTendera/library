require 'spec_helper'

describe Book do
  it "Checking book's essencial attributes" do
    book = Book.new

    expect(book.valid?).to eq false

    book.name = "name"
    book.author = "author"
    
    expect(book.valid?).to eq true

  end
end