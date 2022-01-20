Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  get "/show_list" => "users#show_list"
  get "/login" => "users#login"
end
