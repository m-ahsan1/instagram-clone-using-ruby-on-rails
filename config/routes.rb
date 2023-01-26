Rails.application.routes.draw do
  get 'users/index'
  # resources :posts do
  #   resources :comments, only: [:create]
  # end

  resources :posts do
    resources :comments, only: [:create, :destroy]
  end

  resources :likes, only: [:create, :destroy]

  resources :stories
  resources :posts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:"home#index"
  #root to:"posts#show"


  get "devise/profile"
  #get "search", to: "users#search"
  get "profile", to: "users#profile"
  match '/users',   to: 'users#index',   via: 'get'
  match '/users',   to: 'users#profile',   via: 'get'
  #match '/users',   to: 'users#search',   via: 'get'
end
