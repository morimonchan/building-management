Rails.application.routes.draw do


  devise_for :users

  root to: "buildings#index"
  post 'users', to: 'registrations#create'

  resources :buildings do
    resources :parkings, only: [:index,:new, :create]
    resources :vacancies, only: [:index,:new, :create]
    end

end
