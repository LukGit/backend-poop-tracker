Rails.application.routes.draw do
  resources :reports

  get '/current_user', to: 'users#show'

  post '/users', to: 'users#create'

  post '/signup', to: 'users#signup'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
