require 'rails_helper'

RSpec.describe Category, type: :model do
  before :each do
    # Your setup code
    @user = User.create!(name: 'van', email: 'van@gmail.com', password: '123456', password_confirmation: '123456')
  end

  it "is not valid without a name" do
    category = Category.new(user: @user, icon: 'https://vacation.png')
    expect(category).to_not be_valid
  end

  it "is not valid without an icon" do
    category = Category.new(user: @user, name: 'Vacation')
    expect(category).to_not be_valid
  end
end
