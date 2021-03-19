Rails.application.routes.draw do
  devise_for :users
  # get 'votes/index'
  # root to: "votes#index"
  root to: "rankings#index"
  resources :users
  resources :rankings
end
