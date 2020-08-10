Rails.application.routes.draw do
   get 'sessions/new'
   root 'home#index'
   get '/signup', to: 'users#new'
   get '/login', to: 'sessions#new'
   post '/login', to: 'sessions#create'
   delete '/logout', to: 'sessions#destroy'
   resources :users
   get '/addproduct', to: 'products#new'
   resources :products
end