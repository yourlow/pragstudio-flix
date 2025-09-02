Rails.application.routes.draw do
  root "movies#index"

  get "up" => "rails/health#show", as: :rails_health_check
  get "movies" => "movies#index"
  get "movie/:id" => "movies#show", as: "movie"
  get "movie/:id/edit" => "movies#edit", as: "edit_movie"
end
