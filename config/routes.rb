Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'wines#index'
  get "wines/:name", controller: 'wines', action: 'new'
  # get "wines/:name", controller: 'wines', action: 'show'
  resources :wines
  resources :redwines
  
end
