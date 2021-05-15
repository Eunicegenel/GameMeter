Rails.application.routes.draw do
  get '/games' => 'games#index'
  get '/games/new' => 'games#new'
  post '/games' => 'games#create', as: 'game_create'
end
