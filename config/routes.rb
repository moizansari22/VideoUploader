Rails.application.routes.draw do
  resources :videos
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'videos#index'
  get 'api/v1/videos' ,to: 'api/v1/videos#index'
  post 'api/v1/videos/create' ,to: 'api/v1/videos#create'
  get 'api/v1/categories' ,to: 'api/v1/categories#index'
end
