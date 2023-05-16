Rails.application.routes.draw do
  
  # a quick change to the devise gem, allowing for profile pictures
  devise_for :users, controllers: { registrations: 'registrations' }


  # This line declares the root page of the website
  root 'questions#index'

  resources :questions, only: [:index, :show, :create, :destroy] do
    resources :comments, only: [:create, :edit, :update, :destroy]
  end
end