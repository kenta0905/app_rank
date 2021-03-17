Rails.application.routes.draw do
  devise_for :users
  get 'votes/index'
  root to: "votes#index"
end
