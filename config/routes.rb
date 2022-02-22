Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :powers, only: %i[index show] do
    resources :bookings, only: %i[new create]
  end

  get "bookings", to: "pages#bookings"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
