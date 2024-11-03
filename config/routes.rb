Rails.application.routes.draw do
 
  get "up" => "rails/health#show", as: :rails_health_check

  get "/students" => "students#index"
  get "/students/:id" => "students#show"
  post "/students" => "students#create"
  patch "/students/:id" => "students#update"
  delete "/students/:id" => "students#destroy"

end
