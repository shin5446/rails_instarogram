Rails.application.routes.draw do
  resources :sessions
  resources :blogs do
    collection do
      post :confirm
    end
  end
  resources :users  
end
