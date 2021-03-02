Rails.application.routes.draw do
  resources :authors, only: [:index, :show, :create, :update, :destroy]
  resources :books, only: [:index, :show, :create, :update, :destroy]
end
