Rails.application.routes.draw do
  root(to: "home#index")
  get("about" => "about#index")
  get "posts" => "posts#index"

  namespace :api do
    get("status" => "status#index")
    get("consoles" => "consoles#index")
  end
end
