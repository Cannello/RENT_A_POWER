Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :powers, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end

  get "bookings", to: "pages#bookings"
  get "past-bookings", to: "pages#past-bookings"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
