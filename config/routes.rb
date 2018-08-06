Rails.application.routes.draw do

  root 'static_pages#home', as: :home
  get 'static_pages/about', 'static_pages#about'	


  get '/signup',  to: 'users#new'
    resources :users, except: [:new]

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
