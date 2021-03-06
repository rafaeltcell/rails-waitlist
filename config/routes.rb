Rails.application.routes.draw do

  mount TcellApi => '/api'

  devise_for :users
  resources :widgets
  resources :users, only: [:index]
  resources :waitlist_entries, only: [:index, :create, :show]

  get '/large', controller: :welcome, action: :large

  get '/ping', controller: :welcome, action: :ping

  get '/send_me_elsewhere', controller: :welcome, action: :send_me_elsewhere

  get '/some/:name', controller: :welcome, action: :some

  post '/feed_me', controller: :welcome, action: :feed_me

  get '/sql-exception', controller: :welcome, action: :sql_exception

  root 'welcome#index'

end
