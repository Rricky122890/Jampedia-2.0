Rails.application.routes.draw do
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get    '/lookup', to: 'lookup#new'
  resources :genres
  resources :artists
  resources :adds
  resources :songs

  resources :users do
    resources :playlists, only: [:index]
  end
  resources :playlists, except: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
