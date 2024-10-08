Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :countries, only: :index do
    resources :cities, only: :index do
      resources :places, only: :index
    end
  end

  resources :trips, only: %i[index show new create destroy] do
    resources :groups, only: %i[new create]
  end

  get 'trips/:invite_token/join', to: 'trips#join', as: 'join_trip'

  resources :groups, only: [] do
    resources :memberships, only: %i[new create]
  end

  resources :places, only: :show do
    resources :plans, only: %i[create]
  end

  resources :plans, only: %i[destroy]

  # Defines the root path route ("/")
  # root "posts#index"
end
