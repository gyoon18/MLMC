Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :groups, :users
get '/' => 'users#index'
post '/sessions' => 'sessions#create'
post '/users' => 'users#create'
get '/dashboard' => 'mlmc#index'


end
