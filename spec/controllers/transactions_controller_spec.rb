require 'rails_helper'

RSpec.describe TransactionsController, type: :controller do
  before :each do
    @user = User.create!(name: 'van', email: 'van@gmail.com', password: '123456', password_confirmation: '123456')
    sign_in @user
    @category = Category.create!(name: 'Sample Category', icon: 'sample.png', user: @user)
  end

  describe "GET #index" do
    it "returns http success" do
      get :index, params: { category_id: @category.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new, params: { category_id: @category.id }
      expect(response).to have_http_status(:success)
    end
  end

  # Additional tests for other actions
end
