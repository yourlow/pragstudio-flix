Rails.application.routes.draw do
  root "movies#index"
  get "up" => "rails/health#show", as: :rails_health_check
  resources :movies
end
