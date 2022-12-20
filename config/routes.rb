Rails.application.routes.draw do

  ### User Routes ###
  post "/users" => "users#create"

  ### Sessions Routes ###
  post "/sessions" => "sessions#create"
end
