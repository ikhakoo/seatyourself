Rails.application.routes.draw do

  get 'restaurants/new'

  get 'restaurants/create'

  root 'restaurants#index'
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  
end
