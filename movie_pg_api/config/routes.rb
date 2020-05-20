Rails.application.routes.draw do
  # resources :trivia
  # resources :favorites
  # resources :reviews
  # resources :journals
  resources :movies
  # resources :users
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/signup", to: "users#create"
  post "/login", to: "auth#login"
  get "/autologin", to: "auth#autologin"
  post "/logout", to: "auth#logout"
  
  # get 'movies/:id', to: 'movies#show'
  get 'search', to: 'movies#search'
  # get 'filter', to: 'movies#filter'
  
  # end

end
