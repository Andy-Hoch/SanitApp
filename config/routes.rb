Rails.application.routes.draw do
  root to: "treatments#index"
  resources :treatments, only: %i[show new create edit] do
    resources :appointments, only: %i[new create]  # new is temporary
    resources :reviews, only: %i[new create]  # new is temporary
  end
  resources :appointments, only: %i[index show edit]
  devise_for :users
end
