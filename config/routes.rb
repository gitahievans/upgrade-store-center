Rails.application.routes.draw do
  
  resources :admins
  resources :bookings
  resources :storage_units
  resources :clients
  resources :staffs
    get '/hello', to: 'application#hello_world'

end
