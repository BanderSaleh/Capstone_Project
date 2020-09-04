Rails.application.routes.draw do
  namespace :api do
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    #localhost:3000/api/users/1
    get "/users" => "users#index"
    #users index has error, I want to display all users
    post "/sessions" => "sessions#create"

    get "/products" => "products#index"
    get "/completed" => "products#indexcompleted"
    get "/products/new" => "products#new"
    # create the html ^
    post "/products" => "products#create"
    post "/products/create" => "products#create"
    post "/completed/create" => "products#createcompleted"
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
end

