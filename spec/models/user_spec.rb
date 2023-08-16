require 'rails_helper'

RSpec.describe User, type: :model do
  it "is not valid without a name" do
    user = User.new(email: 'van@gmail.com', password: '123456', password_confirmation: '123456')
    expect(user).to_not be_valid
  end

  it "is not valid without an email" do
    user = User.new(name: 'van', password: '123456', password_confirmation: '123456')
    expect(user).to_not be_valid
  end

  it "is not valid with a duplicate email" do
    User.create!(name: 'van', email: 'van@gmail.com', password: '123456', password_confirmation: '123456')
    user = User.new(name: 'john', email: 'van@gmail.com', password: '123456', password_confirmation: '123456')
    expect(user).to_not be_valid
  end
end
