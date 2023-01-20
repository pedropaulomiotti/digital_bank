Rails.application.routes.draw do
  
  root 'welcome#index'
  get 'welcome/index'

  namespace :users_backoffice do
    resources :users, only: [:index]
  end
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
