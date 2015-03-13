Rails.application.routes.draw do

resources :parks do
  resources :reviews
end
resources :features
resources :parkfeatures
resources :users
resources :sessions


get "/login", to: "sessions#new"
get "/logout", to: "sessions#destroy"

root to: "parks#index"

end
