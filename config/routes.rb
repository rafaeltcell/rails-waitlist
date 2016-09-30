Rails.application.routes.draw do

  devise_for :users
  resources :widgets
  resources :users, only: [:index]
  resources :waitlist_entries, only: [:index, :create, :show]

  get '/large', controller: :welcome, action: :large

  get '/ping', controller: :welcome, action: :ping

  get '/send_me_elsewhere', controller: :welcome, action: :send_me_elsewhere

  root 'welcome#index'

end
