Rails.application.routes.draw do
  devise_for :users
  resources :ships, :jobs, :shipjobs
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#index'
  get '/profile' => 'users#profile'
  post '/ships/new' => 'ships#create'
end


# user

# shipIds

# ShipJobs
# job = Job.create

# job id 1, ship id 1
# job id 1, ship id 2
# ShipJob.create

