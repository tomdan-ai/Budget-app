# spec/controllers/users_controller_spec.rb
require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  before :each do
    @user = User.create!(name: 'van', email: 'van@gmail.com', password: '123456', password_confirmation: '123456')
  end

  describe "GET #index" do
    it "returns http success" do

    end
  end

  # ... other tests ...
end
