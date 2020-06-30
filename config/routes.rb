Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  resources :users, only: [:edit, :update]
  resources :groups, only: [:index, :new, :create, :edit, :update]
  resources :message, only: [:new, :create, :edit, :update]
    resources :message, only: [:index, :create]
end