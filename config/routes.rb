Rails.application.routes.draw do
  get "/" => "home#index"
  post "users/login", to: "users#authenticate"
  get "/signin" => "sessions#new", as: :new_sessions
  post "/signin" => "sessions#create", as: :sessions
  delete "/signin" => "sessions#destroy", as: :destroy_sessions
  resources :todos
  resources :users
end
