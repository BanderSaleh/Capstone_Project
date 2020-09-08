Rails.application.routes.draw do
  namespace :api do
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    get "/users" => "users#index"
    post "/sessions" => "sessions#create"

    get "/products" => "products#index"
    get "/completed" => "products#indexcompleted"
    get "/completed/show2" => "products#indexcompleted2"
    get "/products/new" => "products#new"
    # create the html ^
    post "/products" => "products#create"
    post "/products/create" => "products#create"
    post "/completed/create" => "products#createcompleted"
    post "/completed/create2" => "products#createcompleted2"
    get "/products/:id" => "products#show"
    get "/completed/:id" => "products#showcompleted"
    # get "/completed/:id/edit" => "products#editcompleted"
    # get "/products/:id/edit" => "products#edit"
    # add html functions 
    patch "/products/:id" => "products#update"
    patch "/completed/:id" => "products#updatecompleted"
    delete "/products/:id" => "products#destroy"
    delete "/completed/:id" => "products#destroycompleted"
  end

  root 'application#index'
  get '/*path', to: 'application#index'
end

