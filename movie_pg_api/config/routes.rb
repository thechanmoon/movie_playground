Rails.application.routes.draw do
  # resources :trivia
  # resources :favorites
  # resources :reviews
  # resources :journals
  # resources :movies
  
  # resources :movies, only: [:create :index, :show] do
  #   resources :reviews, only: [:create]
  #   resources :favorites, only: [:create]
  #   delete "/favorites/remove", to: "favorites#destroy"
  # end
  
  resources :movies do
    resources :reviews
    # search "/reviews/search", to: "reviews/search"
    resources :favorites    
    delete "/favorites/remove", to: "favorites#destroy"
  end

  
  # resources :users
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/signup", to: "users#create"
  post "/login", to: "auth#login"
  get "/autologin", to: "auth#autologin"
  post "/logout", to: "auth#logout"
  
  # get 'movies/:id', to: 'movies#show'
  get 'search', to: 'movies#search'
  get '/reviews/search', to: 'reviews#search'
  # get 'filter', to: 'movies#filter'
  
  # end

end
