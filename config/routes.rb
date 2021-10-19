Rails.application.routes.draw do
  root to: 'schedules#index'
  resources :schedules, only: [:index, :new, :create, :destroy]
end
