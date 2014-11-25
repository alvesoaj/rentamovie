Rentamovie::Application.routes.draw do
    devise_for :users

    resources :roles
    resources :rents
    resources :movies
    resources :people

    namespace :service do
        resources :movies
    end

    root :to => 'pages#index'
end