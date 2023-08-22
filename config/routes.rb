Rails.application.routes.draw do
  root to: "pages#home"
  get 'treatments/index', to: "treatments#index"
  resources :reviews, only: [:new, :create]
  devise_for :users
end
