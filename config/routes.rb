Rails.application.routes.draw do
  get 'games', to: "games#index"
  get 'guests/new'
  get 'guests/create'

  get 'meetups/:id/book', to: "meetups#book", as: "meetup_book"
  get 'guests/:id/accept', to: "guests#accept", as: "accept_guest"
  get 'guests/:id/reject', to: "guests#reject", as: "reject_guest"
  get 'profile', to: 'profiles#index', as: 'profile'
  get 'profile/:id', to: 'profiles#show', as: 'user_profile'
  post "meetups/:meetup_id/guests", to: "guests#create", as: "meetup_guests"

  resources :meetups
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
