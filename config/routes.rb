Rails.application.routes.draw do
  get 'messages/conversations'
  get 'messages/index'
  get 'messages/create'
  devise_for :users
  root to: "pages#home"

  resources :vehicules do
    resources :reservations, only: [:new, :create, :edit, :update, :show]

  end
  resources :categories, only: [:index, :show]

  resources :reservations, only: [:destroy, :show, :update, :edit]

  get '/dashboard', to: 'dashboards#user_profile'

  get 'conversations', to: 'messages#conversations'
  resources :users do
    resources :messages, only: [:index, :create]
  end
  
end

# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# Defines the root path route ("/")
# root "articles#index"
