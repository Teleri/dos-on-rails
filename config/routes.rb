Rails.application.routes.draw do
  devise_for :users
  root to: 'tours#index'
  resources :tours
end
