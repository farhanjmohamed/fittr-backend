Rails.application.routes.draw do

  ### User Routes ###
  post "/users" => "users#create"

  ### Sessions Routes ###
  post "/sessions" => "sessions#create"

  ### Item Routes ###
  get "/items" => "items#index"
  get "/items/:id" => "items#show"
  post "/items" => "items#create"
  patch "/items/:id" => "items#update"
  delete "/items/:id" => "items#destroy"

  ### Category Routes ###
  get "/categories" => "categories#index"

  ### Outfit Routes ###
  get "/outfits" => "outfits#index"
  get "/outfits/:id" => "outfits#show"
  post "/outfits" => "outfits#create"
  patch "/outfits/:id" => "outfits#update"
  delete "/outfits/:id" => "outfits#destroy"

  ### Outfit_Items Routes ###
  get "/outfit_items" => "outfit_items#index"
  post "/outfit_items" => "outfit_items#create"
end
