Rails.application.routes.draw do
  root to: "treatments#index"
  resources :treatments, only: %i[show new create]
  resources :reviews, only: %i[new create] # new is temporary
  devise_for :users
end
