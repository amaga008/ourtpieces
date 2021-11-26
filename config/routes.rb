Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "profile", to: "users#profile", as: "profile"
  get "settings", to: "pages#settings"

  resources :users, only: [:show]

  resources :arts do
    resources :transactions, only: [ :new, :create, :show ]
    resources :bids, only: [ :index, :create ]
  end
end
