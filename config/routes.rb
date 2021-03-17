Rails.application.routes.draw do
  devise_for :users
  get 'votes/index'
  root to: "votes#index"
  resources :users, only: [:edit, :update]
  resources :rankings, only: [:new, :create]
end
