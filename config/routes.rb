Rails.application.routes.draw do
  
  get '/' => 'locations#index'
  get 'locations' => 'locations#index'

end
