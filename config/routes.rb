Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/signout', to:'sessions#delete'

  delete '/trips/:id', to: 'trips#delete', as: 'delete_trip_path'

  resources :trips
  resources :cities
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/', to: "main#welcome"

  get '/signup', to: "users#new"

  get '/profile', to: "users#profile"

  get '/logout', to: "sessions#delete"

  get '/welcome2', to: "main#welcome2"


end
