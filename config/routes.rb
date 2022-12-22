Rails.application.routes.draw do
  root to: 'home#index'

  get '/game', to: 'game#index'

  get '/usernames', to: 'usernames#index'
  post '/usernames', to: 'sessions#create'
  patch '/usernames', to: 'usernames#update'

  get '/lobby', to: 'lobby#index'

  get '/account', to: 'account#index'

  get '/sign_in', to: 'sessions#new'

  post '/sign_in', to: 'sessions#create'

  delete '/log_out', to: 'sessions#destroy'

end
