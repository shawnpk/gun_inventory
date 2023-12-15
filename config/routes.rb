Rails.application.routes.draw do
  root 'guns#index'
  resources :guns
end
