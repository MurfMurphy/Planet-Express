Rails.application.routes.draw do
  devise_for :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#index'
  post '/signout' => 'sessions#destroy'
end


# user

# shipIds

# ShipJobs
# job = Job.create

# job id 1, ship id 1
# job id 1, ship id 2
# ShipJob.create

