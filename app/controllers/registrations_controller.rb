# app/controllers/registrations_controller.rb

class RegistrationsController < Devise::RegistrationsController
    def after_sign_up_path_for(resource)
      flash[:notice] = "Thank you for signing up! You've been redirected to the categories page."
      categories_path
    end
  end