Rails.application.routes.draw do
  root "recipes#index"
  resources :recipes, only: [:index, :show]
  resources :users, only: [:new, :create]
  get "/dashboard/:id", to: "dashboard#show", as: :dashboard

  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: :logout
end
