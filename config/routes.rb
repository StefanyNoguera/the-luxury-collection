Rails.application.routes.draw do
  get 'users/show'
  # devise_for :users, controllers: {
  #   registrations: "users/registrations",
  # }
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  as :user do
    get 'user/signin' => 'devise/sessions#new', :as => :new_user_session
    post 'user/signin' => 'devise/sessions#create', :as => :user_session
    get 'user/signout' => 'devise/sessions#destroy', :as => :destroy_user_session, via: [:delete, :get]
  end
  resources :users do
    resources :sellers, only: [:create, :new, :show]
  end
  scope "admin" do
      devise_for :users, :skip => [:sessions]
  end
  # Defines the root path route ("/")
  # root "articles#index"
  delete "products/:id", to: "products#destroy", as: :destroy_product
  resources :products, only: [:index, :show, :new, :create] do
    resources :orders, only: [:create, :new]
    resources :wishlists, only: [:create, :new, :index]
    delete "wishlists/:id", to: "wishlists#destroy", as: :destroy_wishlist
    resources :reviews, only: [:create, :new]
  end
end
