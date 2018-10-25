Rails.application.routes.draw do
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get    '/lookup', to: 'lookup#new'
  resources :genres
  resources :artists
  resources :adds
  resources :songs
  resources :playlists
  resources :users
end
