Rails.application.routes.draw do
  resources :adds
  resources :songs
  resources :playlists
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end