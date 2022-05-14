Rails.application.routes.draw do
  resources :logs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #return the top N logs
  get '/number/logs/:n', to: 'logs#top_n'
  get '/specific_app/logs/:app/:n', to: 'logs#specific_logs_n'
   get '/specific_app/logs/:app', to: 'logs#specific_logs'

end
