Rails.application.routes.draw do
  root to: "treatments#index"
  resources :treatments, only: %i[show]
  resources :reviews, only: [:new, :create] # new is temporary
  devise_for :users
end
