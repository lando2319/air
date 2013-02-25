OneWayAir::Application.routes.draw do

  resources :reservations


  get "sign_in", :controller => 'sessions', :action => 'new'

  # get "sign_in" => 'sessions#new', :as => :sign_in

  post "sessions/create" => 'sessions#create'

  get "sessions/destroy" => 'sessions#destroy', :as => :sign_out

  resources :users


  root to: 'flights#index'
end

