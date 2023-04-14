Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :products, only: [:index, :show] do
    resources :orders, only: [:create, :new]
    resources :wishlists, only: [:create, :new]
  end
  resources :users, only: [:show, :destroy]
end
