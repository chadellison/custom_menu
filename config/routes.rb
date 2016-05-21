Rails.application.routes.draw do
  root "recipes#index"
  resources :recipes, only: [:index, :show]
  resources :users, only: [:new, :create]
  get "/dashboard/:id", to: "dashboard#show", as: :dashboard
end
