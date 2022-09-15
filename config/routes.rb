Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#home"
  resources :pizzas, only: [:new, :create]
  get '/confirm', to: 'pizza#show', as: 'confirmation'
end
