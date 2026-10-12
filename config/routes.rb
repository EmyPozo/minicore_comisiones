Rails.application.routes.draw do
  resources :vendedores
  resources :ventas
  resources :reglas
  get "comisiones", to: "comisiones#index"
  root "comisiones#index"
  get "up" => "rails/health#show", as: :rails_health_check
end
