Rails.application.routes.draw do
  get '/', to: 'top_pages#index'
  resources :sessions
  resources :blogs do
    collection do
      post :confirm
    end
  end
  resources :users
  resources :favorites
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
