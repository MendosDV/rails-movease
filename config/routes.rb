Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :vehicules do
<<<<<<< HEAD
    resources :reservations, only: [:new, :create, :edit, :update, :show]
=======
    resources :reservations, only: [:new, :create]
>>>>>>> a2bf3c6d3c2b5b5e35967593034aaeccc5c9091f

  end
  resources :categories, only: [:index, :show]

  resources :reservations, only: [:destroy, :show, :update, :edit]

  get '/dashboard', to: 'dashboards#user_profile'

end

# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# Defines the root path route ("/")
# root "articles#index"
