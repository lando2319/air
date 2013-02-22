OneWayAir::Application.routes.draw do

  get "sessions/new", :as => :sign_in

  post "sessions/create"

  get "sessions/destroy"

  resources :users


  root to: 'flights#index'
end
