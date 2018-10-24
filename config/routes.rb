Rails.application.routes.draw do
  resources :genres
  resources :artists
  resources :adds
  resources :songs
  resources :playlists
  resources :users
end
