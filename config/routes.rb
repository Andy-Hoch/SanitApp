Rails.application.routes.draw do
  root to: "treatments#index"
  resources :treatments, only: %i[show]
  devise_for :users
end
