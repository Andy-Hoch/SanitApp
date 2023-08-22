Rails.application.routes.draw do
  root to: "treatments#index"
  resources :treatments, only: %i[show]
  resources :users, only: %i[new, create]
  devise_for :users
end
