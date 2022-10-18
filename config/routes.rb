Rails.application.routes.draw do
  devise_for :users
  resources :videos
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'videos#index'
  get 'api/v1/videos' ,to: 'api/v1/videos#index'
  post 'api/v1/videos/create' ,to: 'api/v1/videos#create'
  get 'api/v1/categories' ,to: 'api/v1/categories#index'
end
