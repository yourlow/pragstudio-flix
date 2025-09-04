Rails.application.routes.draw do
  root "movies#index"

  

  get "up" => "rails/health#show", as: :rails_health_check
  get "movies" => "movies#index"
  get "movies/new" => "movies#new", as: "new_movie"
  get "movies/:id" => "movies#show", as: "movie"
  get "movies/:id/edit" => "movies#edit", as: "edit_movie"
  patch "movies/:id" => "movies#update"
  post "movies" => "movies#create", as: "create_movie"
end
