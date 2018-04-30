Rails.application.routes.draw do
  resources :transactions
  resources :locations
  resources :stores
  resources :categories
  resources :products
  resources :users
  root to: "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
