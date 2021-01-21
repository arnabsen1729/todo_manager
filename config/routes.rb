Rails.application.routes.draw do
  get "/" => "home#index"
  post "users/login", to: "users#authenticate"
  resources :todos
  resources :users
end
