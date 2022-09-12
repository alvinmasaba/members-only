Rails.application.routes.draw do
  root "posts#index"

  resources :posts
  devise_for :users

  get "/search_post", to: "search#search_post"
end
