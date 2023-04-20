Rails.application.routes.draw do
  
  #PRODUCTS
  resources :products
  # get "/products" => "products#index"
  # get "/products/:id" => "products#show"
  # post "/products" => "products#create"
  # patch "/products/:id" => "products#update"
  # delete "/products/:id" => "products#destroy"
  
  #SUPPLIERS
  resources :suppliers
  # get "/suppliers" => "suppliers#index"
  # get "/suppliers/:id" => "suppliers#show"
  # post "/suppliers" => "suppliers#create"
  # patch "/suppliers/:id" => "suppliers#update"
  # delete "/suppliers/:id" => "suppliers#destroy"

  #USERS
  resources :users, only: [:new, :create]
  get "/signup" => "users#new"
  # get "/users" => "users#index"
  # post "/users" => "users#create"
 
  #SESSIONS
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"
  # post "/sessions" => "sessions#create"

  #ORDERS
  resources :orders, except: [:destroy]
  # get "/orders" => "orders#index"
  # get "/orders/:id" => "orders#show"
  # post "/orders" => "orders#create"

  #CARTED PRODUCTS
  resources :carted_products, only: [:index, :create, :destroy]

end
