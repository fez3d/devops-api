Rails.application.routes.draw do
  root to: 'home#index'

  get 'home/index'
  resources :books
  resources :videogames
  devise_for :users
end
