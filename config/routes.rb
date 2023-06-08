Rails.application.routes.draw do
  resources :pharmacies, only: [:index]

  
end
