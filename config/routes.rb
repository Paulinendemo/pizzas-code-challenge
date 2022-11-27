Rails.application.routes.draw do
  resources :restaurant_pizzas, only:[:create]
  resources :pizzas, only:[:create]
  resources :restaurants, only:[:show, :index, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
