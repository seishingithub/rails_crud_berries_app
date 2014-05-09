Rails.application.routes.draw do

  root 'berries#index'

  get '/berries', to: 'berries#index'

  get '/berries/new', to: 'berries#new'

  post '/berries', to: 'berries#create'

end
