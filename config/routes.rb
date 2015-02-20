Rails.application.routes.draw do
  
  resources :users
  resources :reviews
  resources :teams
  resources :team_members

  root to: "users#index"
  
end
