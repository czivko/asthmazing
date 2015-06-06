Rails.application.routes.draw do
  resources :asthma_emergency_departments, only: [:index]
end
