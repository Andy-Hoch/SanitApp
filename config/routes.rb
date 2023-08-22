Rails.application.routes.draw do
  get 'treatments/index', to: "treatments#index"
  devise_for :users
  root to: "pages#home"
  resources :reviews, only: [:new, :create]
end
