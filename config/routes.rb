Rails.application.routes.draw do

  ### User Routes ###
  post "/users" => "users#create"

  ### Sessions Routes ###
  post "/sessions" => "sessions#create"

  ## Item Routes ###
  get "/items" => "items#index"
  get "/items/:id" => "items#show"
  post "/items" => "items#create"
  patch "/items/i:d" => "items#update"
  delete "/items/:id" => "items#destroy"
end
