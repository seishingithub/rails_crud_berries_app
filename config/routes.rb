Rails.application.routes.draw do

  root 'berries#index'

  get '/berries', to: 'berries#index'

  get '/berries/new', to: 'berries#new'

  post '/berries', to: 'berries#create'

  get '/berries/:id', to: 'berries#show'

  get '/berries/:id/edit', to: 'berries#edit'

  put '/berries/:id', to: 'berries#update'

  delete '/berries/:id', to: 'berries#destroy'

end
