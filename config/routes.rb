Rails.application.routes.draw do

  root 'welcome#index'

  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/users', to: 'users#index', as: 'users'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  put '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'

  get '/cities', to: 'cities#index', as: 'cities'
  post '/cities', to: 'cities#create'
  get '/cities/:id', to: 'cities#show', as: 'city'

  get '/users/:user_id/logs', to: 'logs#index', as: 'user_logs'
  post '/users/:user_id/logs', to: 'logs#create'
  get '/users/:user_id/logs/:id', to: 'logs#show', as: 'user_log'
  put '/users/:user_id/logs/:id', to: 'logs#update'
  delete '/users/:user_id/logs/:id', to: 'logs#destroy'
  get '/users/:user_id/logs/new', to: 'logs#new', as: 'new_user_log'
  get '/users/:user_id/logs/:id/edit', to: 'logs#edit', as: 'edit_user_log'

end
