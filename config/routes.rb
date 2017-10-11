Rails.application.routes.draw do
  root "questions#index"
  resources :questions, only: [:index, :new, :show, :create, :edit, :update] do
    resources :answers, only: [:new, :create]
  end
end
