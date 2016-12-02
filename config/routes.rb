Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'shoes#index'

  devise_for :users

  resources :shoes
  resources :cart
end
