Rails.application.routes.draw do

  root 'galleries#landing'

  resources :galleries do
    resources :photos
  end
  resources :users

  get "/login" => 'sessions#new', as: :login
  post "/login" => 'sessions#create'
  delete "/logout" => 'sessions#destroy', as: :logout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
