Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "/experiences" => "experiences#index"
  get "/skills" => "skills#index"
  post "/experiences" => "experiences#create"
  post "/skills" => "skills#create"
  get "/experiences/:id" => "experiences#show"
  get "/skills/:id" => "skills#show"
  patch "/experiences/:id" => "experiences#update"
  patch "/skills/:id" => "skills#update"
  delete "/experiences/:id" => "experiences#destroy"
  delete "/skills/:id" => "skills#destroy"

  # Defines the root path route ("/")
  # root "posts#index"
end
