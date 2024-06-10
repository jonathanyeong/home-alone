Rails.application.routes.draw do
  devise_for :trainers
  get "up" => "rails/health#show", as: :rails_health_check

  resources :dogs, only: [:index, :show]
  resources :training_sessions, only: [:show, :new, :create, :index]
  root "pages#index"
end
