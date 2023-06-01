Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :vehicules do
    resources :reservations, only: [:new, :create]

  end
  resources :categories, only: [:index, :show]

  resources :reservations, only: [:destroy, :show, :update, :edit]

  get '/dashboard', to: 'dashboards#user_profile'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
