Rails.application.routes.draw do

  devise_for :users
  resources :widgets
  resources :users, only: [:index]
  resources :waitlist_entries, only: [:index, :create]

  get '/large', controller: :welcome, action: :large

  get '/ping', controller: :welcome, action: :ping

  post '/heroku/resources', controller: :welcome, action: :heroku_addon

  root 'welcome#index'

end
