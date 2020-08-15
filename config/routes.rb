Rails.application.routes.draw do
   get 'sessions/new'
   root 'products#index'
   get '/signup', to: 'users#new'
   get '/login', to: 'sessions#new'
   get '/edit', to: 'users#edit'
   get '/users', to: 'users#index'
   post '/login', to: 'sessions#create'
   delete '/logout', to: 'sessions#destroy'
   resources :users
   get '/addproduct', to: 'products#new'
   resources :products
   resources :account_activations, only: [:edit]
   get '/cart', to: 'carts#show'
   post 'order_items/:id', to: 'order_items#create'
   resources :carts
   resources :order_items
end
