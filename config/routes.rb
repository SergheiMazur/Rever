Rails.application.routes.draw do
  get 'guests/new'
  get 'guests/create'
  get 'meetups/:id/book', to: "meetups#book", as: "meetup_book"
  get 'guests/:id/accept', to: "guests#accept", as: "accept_guest"
  get 'guests/:id/reject', to: "guests#reject", as: "reject_guest"
  resources :meetups
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
