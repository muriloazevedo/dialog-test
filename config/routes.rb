Rails.application.routes.draw do
  
  resources :users, only: %i[index show]

  root to: 'users#index'
end
