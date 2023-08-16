require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  before :each do
    @user = User.create!(name: 'van', email: 'van@gmail.com', password: '123456', password_confirmation: '123456')
    sign_in @user
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  # Additional tests for other actions
end
