Rails.application.routes.draw do
  resources :test_users
  resources :items, only: [:index]

  get '/items', to: 'items#index'
  root to: 'home#index'

  get '/game', to: 'game#index'

  get '/users', to: 'users#index'
  post '/users', to: 'users#create'
  patch '/users', to: 'users#update'

  get '/lobby', to: 'lobby#index'

  get '/account', to: 'account#index'

  post '/login', to: "sessions#create", as: 'login'
  get '/auto_login', to: "sessions#auto_login"
  # get '/login', to: 'sessions#new'

  delete '/log-out', to: 'sessions#destroy'
  get '/jokes', to: "jokes#fetchapi", as: :fetchapi
end
