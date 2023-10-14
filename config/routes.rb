Rails.application.routes.draw do
  resources :users, only: [:index, :show, :new] do
    resources :categories, only: [:new, :create, :show, :index, :destroy]
    resources :payments, only: [:new, :create, :index, :show, :destroy]
  end
end
