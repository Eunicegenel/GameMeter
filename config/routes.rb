Rails.application.routes.draw do


  get '/games' => 'games#index'
  post'/games' => 'games#create', as: 'game_create'
  get '/games/details' => 'games#details'
  post'/games/details' => 'games#comment', as: 'game_comment'
  put '/games/details' => 'games#update', as: 'game_update'
  delete '/games/details' => 'games#delete', as: 'game_delete'
end
