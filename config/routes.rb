Rails.application.routes.draw do
  root 'pages#home'
  resources :users
  # resources :users, only: :index
end
