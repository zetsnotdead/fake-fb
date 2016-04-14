Rails.application.routes.draw do
  root 'posts#index'

  devise_for :users
  resources :users
  resources :posts
  resources :likes,       only: [:create, :destroy]
  resources :comments,    only: [:create, :destroy]
  resources :friendships, only: [:create, :destroy]

end
