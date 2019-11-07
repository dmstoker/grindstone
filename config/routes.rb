Rails.application.routes.draw do
  devise_for :users
  root 'places#index'
  resources :places do
  resources :comments, only: :create
  resources :photos, only: :create
  end
end 
