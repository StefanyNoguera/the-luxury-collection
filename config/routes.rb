Rails.application.routes.draw do
  get 'users/show'
  devise_for :users, controllers: {
    registrations: "users/registrations"
  }
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  delete "products/:id", to: "products#destroy", as: :destroy_product
  resources :products, only: [:index, :show, :new, :create] do
    resources :orders, only: [:create, :new]
    resources :wishlists, only: [:create, :new]
    resources :reviews, only: [:create, :new]
  end
  resources :users, only: [:show] do
    resources :sellers, only: [:create, :new, :show]
  end
  get "users/:id", to: "users#card", as: "user_card"
end
