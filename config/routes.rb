Rails.application.routes.draw do
  resources :likes
  resources :users

  post '/login', to: 'auth#login'
  get '/autoLogin', to: 'auth#autologin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
