Rails.application.routes.draw do
  
  #PRODUCTS
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"
  
  #SUPPLIERS
  get "/suppliers" => "suppliers#index"
  get "/suppliers/:id" => "suppliers#show"
  post "/suppliers" => "suppliers#create"
  patch "/suppliers/:id" => "suppliers#update"
  delete "/suppliers/:id" => "suppliers#destroy"

  #USERS
  post "/users" => "users#create"
  get "/users" => "users#index"
  
  #SESSIONS
  post "/sessions" => "sessions#create"
  
  #ORDERS
  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show_order"
  post "/orders" => "orders#create_order"
  
end
