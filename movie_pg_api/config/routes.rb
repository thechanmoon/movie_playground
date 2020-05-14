Rails.application.routes.draw do
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # namespace :api do
    # namespace :v1 do
      post "/signup", to: "users#signup"
      post "/login", to: "users#login"
      post "/logout", to: "users#logout"
      get "/autologin", to: "users#autologin"
    # end
  # end

end
