Rails.application.routes.draw do
  root "dashboard#index"
  resources :article_memos
  resources :tasks
  resources :ideas

  get "up" => "rails/health#show", as: :rails_health_check
end
