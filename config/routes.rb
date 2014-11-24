Rentamovie::Application.routes.draw do
    devise_for :users

    resources :roles
    resources :rents
    resources :movies
    resources :people

    root :to => 'pages#index'
end