Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :vehicules do
    resources :reservations, only: [:create]
  end
  resources :reservations, only: [:update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
