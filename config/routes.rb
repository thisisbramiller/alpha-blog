Rails.application.routes.draw do
  root 'pages#home'
  
  get 'about', to: 'pages#about'
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'session#create'
  post 'login', to: 'session#destroy'
  
  resources :users, except: [:new] 
  resources :articles
end
