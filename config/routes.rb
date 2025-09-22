Rails.application.routes.draw do
  resources :users
  root "movies#index"
  get "up" => "rails/health#show", as: :rails_health_check
  resources :movies do
    resources :reviews
  end
end
