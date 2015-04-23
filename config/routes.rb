Rails.application.routes.draw do

  get 'reservations/new'

  get 'reservations/create'

  get 'reservations/edit'

  get 'reservations/destroy'

  get 'restaurants/new'

  get 'restaurants/create'

  root 'restaurants#index'
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :restaurants
  resources :reservations
  
end
