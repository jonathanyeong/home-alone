Rails.application.routes.draw do
  get 'pages/index'
  get "up" => "rails/health#show", as: :rails_health_check

  root "pages#index"
end
