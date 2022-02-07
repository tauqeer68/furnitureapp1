Rails.application.routes.draw do
  resources :mattresses
  resources :shops
  root 'shops#new'


  get '/shops/:id', to: 'mattresses#show', as: :show_shop


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
