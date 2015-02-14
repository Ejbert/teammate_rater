Rails.application.routes.draw do
  
  resources :users
  resources :reviews
  resources :teams

  root to: "users#index"
  
end
