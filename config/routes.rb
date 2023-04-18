Rails.application.routes.draw do
  
  #PRODUCTS
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"
  
  #SUPPLIERS
  get "/suppliers" => "products#supplier_index"
  get "/suppliers/:id" => "products#supplier_show"
  post "/suppliers" => "products#supplier_create"
  patch "/suppliers/:id" => "products#supplier_update"
  delete "/suppliers/:id" => "products#supplier_destroy"

  #USERS
  post "/users" => "users#create"
  #SESSIONS
  post "/sessions" => "sessions#create"
  
  #ORDERS
  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show_order"
  post "/orders" => "orders#create_order"
  
end
