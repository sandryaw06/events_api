# == Route Map
#

Rails.application.routes.draw do
  resources :people
  resources :events
  resources :responsables

  post "/users", to: "users#create"
  get "/me", to: "users#me"
  get "/users", to: "users#index"
  post "/auth/login", to: "auth#login"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
