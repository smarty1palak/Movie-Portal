Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'movies'
   root 'static_pages#home'
  # get    '/movie',   to: 'movies#show'
  get    '/book',   to: 'movies#book'
  get    '/shows',   to: 'shows#index'
  get    '/movielist',   to: 'movies#index'
  post   '/display',   to: 'movies#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :movies
  resources :shows
end
