Rails.application.routes.draw do


  devise_for :users

  root to: "buildings#index"
  post 'users', to: 'registrations#create'

  resources :buildings

end
