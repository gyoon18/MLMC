Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  resources :groups, :users, :events, :tasks, :resources
  get '/' => 'users#index'
  post '/sessions' => 'sessions#create'
  post '/users' => 'users#create'
  get '/dashboard' => 'mlmc#index'
=======
resources :groups, :users, :events, :tasks, :resources
get 'tasks/index'
get '/' => 'users#index'
post '/sessions' => 'sessions#create'
post '/users' => 'users#create'
get '/dashboard' => 'mlmc#index'

>>>>>>> 3d28d49d0b34f03bf681f480d1c683a135b26270
end
