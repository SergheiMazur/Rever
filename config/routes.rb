Rails.application.routes.draw do
  get 'guests/new'
  get 'guests/create'
  get 'profile', to: 'profiles#index', as: 'profile'
  resources :meetups
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
