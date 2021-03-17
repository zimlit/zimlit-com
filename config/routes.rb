Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/login'
  get 'sessions/welcome'
  get 'users/new'
  get '/home', to: 'home#index'
  get 'users/create'
  get 'cubing', to: 'cubing#index'
  get 'coding', to: 'coding#index'
  root to: 'sessions#welcome'
  get 'home/index'
  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  post 'logout', to: 'sessions#logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
