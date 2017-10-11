Rails.application.routes.draw do
  root "questions#index"
  resources :questions, only: [:index, :new, :show, :create] do
    resources :answers, only: [:new, :create]
  end
end
