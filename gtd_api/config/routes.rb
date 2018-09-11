Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :games do 
    resources :platforms, :categories, :game_modes
  end
  
  resources :categories do
    resources :games do
      resources :platforms, :game_modes
    end
  end
  
  resources :platforms do
    resources :games do
      resources :categories, :game_modes
    end
  end


  resources :game_modes do
    resources :games do
      resources :categories, :platforms
    end
  end

  resources :users
end
