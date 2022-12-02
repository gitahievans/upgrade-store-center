Rails.application.routes.draw do
  
  resources :admins
  resources :bookings
  resources :storage_units
  resources :clients
  resources :staffs
  get '/me', to: 'clients#auto_login'
  post '/login/client', to: "clients#login_client"
  post '/login/staff', to: "staffs#login_staff"
  post '/login/admin', to: "admins#login_admin"
  post '/login/admin', to: "admins#login_admin"

  get '/hello', to: 'application#hello_world'

end
