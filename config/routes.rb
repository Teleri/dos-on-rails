Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#homepage'
  resources :destination_offices
  resources :sales_offices
  resources :tours do
    resources :segments
    resources :tour_attachments
  end
end
