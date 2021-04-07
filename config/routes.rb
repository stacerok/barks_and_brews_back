Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/breweries" => "breweries#index"
    get "/breweries/:id" => "breweries#show"

    get "/reviews" => "reviews#index"
    post "/reviews" => "reviews#create"
    patch "/reviews/:id" => "reviews#update"
    delete "/reviews/:id" => "reviews#destroy"
  end
end
