Rails.application.routes.draw do
 # Create
 # Read
 # Update
 # Delete
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end

end
