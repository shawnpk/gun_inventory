Rails.application.routes.draw do
  root 'guns#index'

  devise_for :users
  resources :guns
end
