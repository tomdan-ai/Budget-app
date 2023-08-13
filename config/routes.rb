Rails.application.routes.draw do
  devise_for :users

  # Set the root route to the splash page
  root "pages#splash"

  # Define other application routes as needed

end
