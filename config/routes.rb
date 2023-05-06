Rails.application.routes.draw do

  # This line declares the root page of the website
  root 'questions#index'

  # This is shorthand for declaring the index and show pages
  resources :questions, only: [:index, :show]
  
end