Rails.application.routes.draw do
  
  resources :users
  resources :reviews
  resources :teams
  resources :team_members
  resources :sessions

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"

  #post "/login", to: "sessions#new"


  root to: "users#index"
  
end
