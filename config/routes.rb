Rails.application.routes.draw do

  resources :sessions, only: [:new, :create, :destroy]
  post 'sign_out', to: 'sessions#sign_out'

  resources :posts, only: [:index, :show]

  root 'sessions#new'
end
