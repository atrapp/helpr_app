Rails.application.routes.draw do
  
  root 'welcome#index'

  ############ Authentication ##############

  get 'sessions/new' => 'sessions#new', as: 'log_in'
  post 'sessions' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy', as: 'log_out'  

  get 'profiles' => 'profiles#index'

  ##########################################

  resources :users
  resources :locations
  resources :categories
  resources :requests
  resources :offers

  # resources :users do 
  #   resources :requests, except: [:show, :index]
  #   resources :offers, except: [:show, :index]
  # end


   get 'tests' => 'tests#index'

end

  # get 'users' => 'users#index'
  # get 'users/new' => 'users#new'
  # post 'users' => 'users#create'
  # get 'users/:id' => 'users#show', as: 'user'
  # get 'users/:id/edit' => 'users#edit'
  # put 'users/:id' => 'users#update'
  # delete 'users/:id' => 'users#destroy'