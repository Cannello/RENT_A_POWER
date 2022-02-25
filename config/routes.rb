Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "bookings", to: "pages#bookings"
  get "your_powers", to: "powers#your_powers"
  resources :powers do
    resources :bookings, only: %i[new create edit update]
  end
  resources :bookings, only: [ :destroy ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
