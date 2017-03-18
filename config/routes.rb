Rails.application.routes.draw do

  root 'galleries#index'

  resources :galleries do
    resources :photos
  end
  resources :users

  get "/login" => 'session#new'
  post "/login" => 'session#create'
  delete "/logout" => 'session#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
