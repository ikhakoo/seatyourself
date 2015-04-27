Rails.application.routes.draw do

  root 'restaurants#index'
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  get "/sessions/destroy" => "sessions#destroy"
  
  resources :restaurants do
    resources :reservations
  end

end
