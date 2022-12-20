Rails.application.routes.draw do
    root to: 'home#index'
    get '/my-account', to: 'my_account#index'
    get '/sign-in', to: 'sign_in#index'
  end
