Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:show]

  resources :arts do
    resources :transactions, only: [ :create ]
    resources :bids, only: [ :create ]
  end
  resources :bids, only: [:show, :destroy]
end
