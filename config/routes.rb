Rails.application.routes.draw do

  devise_for :users
  resources :widgets
  resources :users, only: [:index]

  root 'welcome#index'

end
