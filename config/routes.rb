Rails.application.routes.draw do
  root to: "treatments#index"
  resources :treatments, only: %i[show]
  resources :reviews, only: [:new, :create]
  devise_for :users
end
