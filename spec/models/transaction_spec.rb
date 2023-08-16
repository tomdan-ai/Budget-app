require 'rails_helper'

RSpec.describe Transaction, type: :model do
  before :each do
    # Your setup code
    @user = User.create!(name: 'van', email: 'van@gmail.com', password: '123456', password_confirmation: '123456')
    @category = Category.create!(user: @user, name: 'Vacation', icon: 'https://vacation.png')
  end

  it "is not valid without a name" do
    transaction = Transaction.new(user: @user, category: @category, amount: 50)
    expect(transaction).to_not be_valid
  end

  it "is not valid without an amount" do
    transaction = Transaction.new(user: @user, category: @category, name: 'Groceries')
    expect(transaction).to_not be_valid
  end

  it "is not valid with a non-positive amount" do
    transaction = Transaction.new(user: @user, category: @category, name: 'Groceries', amount: -10)
    expect(transaction).to_not be_valid
  end
end
