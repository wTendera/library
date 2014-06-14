require 'spec_helper'

describe User do
  it "Checking user's essencial attribute" do
    user = User.new

    expect(user.valid?).to eq false

    user.name = "name"
    user.email = "email@email.com"
    user.password = "password"
    user.password_confirmation = "password"
  
    expect(user.valid?).to eq true

  end
end
