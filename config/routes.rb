Rails.application.routes.draw do
  devise_for :trainers
  get "up" => "rails/health#show", as: :rails_health_check

  root "pages#index"
end
