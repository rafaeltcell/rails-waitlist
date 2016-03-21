Rails.application.routes.draw do

  devise_for :users
  resources :widgets
  resources :users, only: [:index]
  resources :waitlist_entries, only: [:index, :create]

  root 'welcome#index'

end
