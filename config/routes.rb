Rails.application.routes.draw do
  root "home#index"
  resources :parkers, only: [:index, :new, :create, :show]
  resources :drivers, only: [:index, :new, :create, :show]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  namespace :api do
    namespace :v1 do
      resources :parkers, only: [:index, :update, :show]
      resources :drivers, only: [:index, :update, :show]
    end
  end
end
