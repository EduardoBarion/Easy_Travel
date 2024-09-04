Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :countries, only: :index

  resources :cities, only: :index do
    resources :places, only: :index
  end

  resources :trips, only: %i[index show destroy]

  resources :places, only: :show do
    resources :plans, only: %i[create destroy]
  end

  # Defines the root path route ("/")
  # root "posts#index"
end
