Rails.application.routes.draw do
  
  root 'welcome#index'

  # get 'users' => 'users#index', as: 'users'
  # get 'users/new' => 'users#new'
  # post 'users' => 'users#create'
  # get 'users/:id' => 'users#show', as: 'user'
  # get 'users/:id/edit' => 'users#edit'
  # put 'users/:id' => 'users#update'
  # delete 'users/:id' => 'users#destroy'

  # resources :users
  resources :locations
  
  # get 'locations' => 'locations#index'



end


  # get 'squares' => 'squares#index'
  # get 'squares/new' => 'squares#new'
  # post 'squares' => 'squares#create'
  # get 'squares/:id' => 'squares#show', as: 'square'
  # get 'squares/:id/edit' => 'squares#edit'
  # put 'squares/:id' => 'squares#update'
  # patch 'squares/:id' => 'squares#update'
  # delete 'squares/:id' => 'squares#destroy'

  # resources :squares