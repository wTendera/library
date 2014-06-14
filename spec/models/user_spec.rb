require 'spec_helper'

describe User do
  it "Checking user's name" do
    user = User.new

    expect(user.valid?).to eq false

    user.name = "name"
    user.email = "email@email.com"
    user.password = "password"
    user.password_confirmation = "password"

    user.valid?
    puts user.errors.messages
  
    expect(user.valid?).to eq true

  end
end
