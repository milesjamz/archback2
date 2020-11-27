    Rails.application.routes.draw do
      namespace :api do
        namespace :v1 do
          resources :users
          resources :allergens
          resources :food_days
          resources :meals
          resources :symptoms
          post '/login', to: 'auth#create'
          get '/profile', to: 'users#profile'
          resources :days
        end
      end
    end