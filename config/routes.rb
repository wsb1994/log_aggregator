Rails.application.routes.draw do
  resources :logs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #return the top N logs
  get '/number/logs/:n', to: 'logs#top_n'

end
