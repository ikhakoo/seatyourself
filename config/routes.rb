Rails.application.routes.draw do
  
  root 'restaurants#index'

  resources :users, only: [:new, :create]

end
