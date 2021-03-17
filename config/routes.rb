Rails.application.routes.draw do
  get 'coding', to: 'coding#index'
  root to: 'home#index'
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
