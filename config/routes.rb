Rails.application.routes.draw do
  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'movies'
   root 'static_pages#home'
   get    '/movies/show',  to: 'movies#show'
   get    '/movies/book',  to: 'movies#book'
  # get    '/movie',   to: 'movies#show'
end
