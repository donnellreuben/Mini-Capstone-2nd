Rails.application.routes.draw do
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end
