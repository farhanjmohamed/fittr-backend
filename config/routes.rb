Rails.application.routes.draw do

  ### User Routes ###
  post "/users" => "users#create"

  ### Sessions Routes ###
  post "/sessions" => "sessions#create"

  ### Item Routes ###
  get "/items" => "items#index"
  get "/items/:id" => "items#show"
  post "/items" => "items#create"
  patch "/items/i:d" => "items#update"
  delete "/items/:id" => "items#destroy"

  ### Category Routes ###
  get "/categories" => "categories#index"

  ### Outfit Routes ###
  get "/outfits" => "outfits#index"
  post "/outfits" => "outfits#create"

  ### Outfit_Items Routes ###
  get "/outfit_items" => "outfit_items#index"
  post "/outfit_items" => "outfit_items#create"
end
