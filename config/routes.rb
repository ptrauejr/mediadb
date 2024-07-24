Rails.application.routes.draw do
  get 'aliases/new'
  get 'aliases/create'
  get 'aliases/update'
  get 'aliases/destroy'
  get 'aliases/index'
  get 'aliases/show'
  get 'people/new'
  get 'people/create'
  get 'people/update'
  get 'people/destroy'
  get 'people/index'
  get 'people/show'
  resources :scenes
  get 'sites/new'
  get 'sites/create'
  get 'sites/update'
  get 'sites/destroy'
  get 'sites/show'
  get 'sites/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
