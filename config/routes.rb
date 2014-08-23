Rails.application.routes.draw do

  root 'welcome#index'

  ############ Authentication ##############

  get 'sessions/new' => 'sessions#new', as: 'log_in'
  post 'sessions' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy', as: 'log_out'

  # in case a user profile is being deleted without destroy the corresponding session:
  get 'log_out' => 'sessions#destroy'

  get 'profiles' => 'profiles#index'

  ##########################################

  resources :users do
    get :search
  end

  resources :locations do
    get :search
  end

  resources :categories

  resources :requests do
    get :search
  end

  resources :offers do
    get :search
  end

end
