Rails.application.routes.draw do
  get 'bookings/new'
  devise_for :users
  root to: 'pages#home'
  resources :powers, only: %I[index show] do
    resources :bookings, only: %I[new create]
  end

  get "bookings", to: "pages#bookings"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
