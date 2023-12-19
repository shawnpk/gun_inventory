Rails.application.routes.draw do
  root 'guns#index'

  devise_for :users
  resources :guns do
    resources :specs
  end
end
