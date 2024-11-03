Rails.application.routes.draw do
 
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

  get "/educations" => "educations#index"
  get "/educations/:id" => "educations#show"
  post "/educations" => "educations#create"
  patch "/educations/:id" => "educations#update"
  delete "/educations/:id" => "educations#destroy"
  
  get "/capstones" => "capstones#index"
  get "/capstones/:id" => "capstones#show"
  post "/capstones" => "capstones#create"
  patch "/capstones/:id" => "capstones#update"
  delete "/capstones/:id" => "capstones#destroy"
  
  get "/students" => "students#index"
  get "/students/:id" => "students#show"
  post "/students" => "students#create"
  patch "/students/:id" => "students#update"
  delete "/students/:id" => "students#destroy"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"



  get "/students" => "students#index"
  get "/students/:id" => "students#show"
  post "/students" => "students#create"
  patch "/students/:id" => "students#update"
  delete "/students/:id" => "students#destroy"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"


end
