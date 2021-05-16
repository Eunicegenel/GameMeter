Rails.application.routes.draw do
  get '/games' => 'games#index'
  get '/games/new' => 'games#new'
  post'/games' => 'games#create', as: 'game_create'
  get '/games/update' => 'games#update'
  post'/games' => 'games#update', as: 'game_update'  
end
