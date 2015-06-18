Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }

  # Find better way to make profiles, and not a bunch of new user paths with it!
  resources :users do
    resources :profiles
  end


  root 'welcome#home'

  get '/workouts', to: 'workouts#show'
  resources :workouts

  # get '/', to: 'welcome#home'

end
