Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :games do 
    resources :platforms, :categories, :game_modes
  end
  
  resources :categories do
    resources :games
  end
  
  resources :platforms do
    resources :games
  end


  resources :game_modes do
    resources :games 
  end

  resources :users
end
