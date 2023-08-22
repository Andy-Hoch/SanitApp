Rails.application.routes.draw do
  root to: "treatments#index"
  resources :treatments, only: %i[show] do
    resources :appointments, only: %i[new create]
  end
  resources :appointments, only: %i[index show edit]
  resources :reviews, only: %i[new create] # new is temporary
  devise_for :users
end
