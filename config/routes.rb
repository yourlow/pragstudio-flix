Rails.application.routes.draw do
  root "movies#index"
  get "up" => "rails/health#show", as: :rails_health_check
  resources :movies do
    resources :reviews
  end

  resource :session, only: [ :new, :create, :destroy ]

  resources :users
  get "signup" => "users#new"
end
