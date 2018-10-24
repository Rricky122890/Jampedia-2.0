Rails.application.routes.draw do
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
