Rails.application.routes.draw do
  resources :songs
  # get '/songs', to: 'songs#index', as: 'songs'
  # get '/songs/:id', to: 'songs#show', as: 'song'
  # get '/songs/new', to: 'songs#new', as: 'new_song'
  # get '/songs/:id/edit', to: 'songs#edit', as: 'edit_song'
  # post '/songs/:id', to: 'songs#create'
  # patch '/songs/:id', to: 'songs#update'
  # delete '/songs/:id', to: 'songs#destroy'

end
