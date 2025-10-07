Rails.application.routes.draw do
  resources :likes
  root "movies#index"
  get "up" => "rails/health#show", as: :rails_health_check
  resources :movies do
    resources :reviews do
      resources :likes
    end
  end

  resource :session, only: [ :new, :create, :destroy ]

  resources :users
  get "signup" => "users#new"
end
