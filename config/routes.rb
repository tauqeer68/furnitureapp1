Rails.application.routes.draw do
  resources :mattresses
  resources :shops
  root 'shops#new'

<<<<<<< HEAD
  get '/shops/:id', to: 'mattresses#show', as: :show_shop

=======
>>>>>>> d3844b05a9caa7deff19fe34d29fb85bfe611900
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
