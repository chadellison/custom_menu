Rails.application.routes.draw do
  root "recipes#index"
  resources :recipes, only: [:index, :show]
  resources :users, only: [:new, :create]
  get "/dashboard/:id", to: "dashboard#show", as: :dashboard
  get "/dashboard/:id/edit", to: "dashboard#edit", as: :edit_dashboard
  patch "/dashboard/:id/edit", to: "dashboard#update"

  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: :logout
end
