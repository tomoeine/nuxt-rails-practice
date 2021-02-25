Rails.application.routes.draw do
  resources :authors, only: [:index, :show, :create, :update]
  resources :books, only: [:index, :show, :create, :update]
end
