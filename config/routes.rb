Rails.application.routes.draw do
  devise_for :users
  resources :users do
    member do
      get :following, :followers
      get :tweets
    end
  end
  resources :tweets,        only: [:index, :create, :destroy]
  resources :relationships, only: [:create, :destroy]
  get 'users/:id/follow/:following_id', to: 'users#follow'
  get 'users/:id/unfollow/:following_id', to: 'users#unfollow'

  root to: "static_pages#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
