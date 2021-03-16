Rails.application.routes.draw do
  get 'votes/index'
 root to: "votes#index"
end
