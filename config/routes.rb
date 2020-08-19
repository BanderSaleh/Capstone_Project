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
    get "/products/:id" => "products#show"
    get "/products/:id/edit" => "products#edit"
    # add html functions
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"
  end
end

