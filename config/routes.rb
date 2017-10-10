Rails.application.routes.draw do
  root "questions#index"
  resources :questions, only: [:index, :new, :show, :create]
end
