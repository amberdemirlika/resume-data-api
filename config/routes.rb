Rails.application.routes.draw do
 
  get "up" => "rails/health#show", as: :rails_health_check

  get "/educations" => "educations#index"
  get "/educations/:id" => "educations#show"
  post "/educations" => "educations#create"
  patch "/educations/:id" => "educations#update"
  delete "/educations/:id" => "educations#destroy"
  
  # Defines the root path route ("/")
  # root "posts#index"


  get "/students" => "students#index"
  get "/students/:id" => "students#show"
  post "/students" => "students#create"
  patch "/students/:id" => "students#update"
  delete "/students/:id" => "students#destroy"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"


end
