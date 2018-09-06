Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :games
  resources :platforms
  resources :categories
  resources :game_modes
  resources :users
end
