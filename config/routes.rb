Rails.application.routes.draw do
  devise_for :users

  # This line declares the root page of the website
  root 'questions#index'

  resources :questions, only: [:index, :show] do
    resources :comments, only: [:create, :edit, :update, :destroy]
  end
end