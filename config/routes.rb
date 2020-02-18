Rails.application.routes.draw do
  devise_for :users
  resources :users do
    member do
      get :following, :followers
      get :tweets
    end
  end
  resources :tweets,        only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  get 'users/:id/follow/:following_id', to: 'users#follow'
  get 'users/:id/unfollow/:following_id', to: 'users#unfollow'

  root to: "static_pages#home"
end
