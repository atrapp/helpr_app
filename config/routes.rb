Rails.application.routes.draw do
  
  root 'welcome#index'

  resources :users
  resources :locations
  resources :categories
  resources :requests
  resources :offers
  
end

  # get 'users' => 'users#index'
  # get 'users/new' => 'users#new'
  # post 'users' => 'users#create'
  # get 'users/:id' => 'users#show', as: 'user'
  # get 'users/:id/edit' => 'users#edit'
  # put 'users/:id' => 'users#update'
  # delete 'users/:id' => 'users#destroy'