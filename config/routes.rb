Rails.application.routes.draw do
  post "users/login", to: "users#authenticate"
  resources :todos
  resources :users
end
