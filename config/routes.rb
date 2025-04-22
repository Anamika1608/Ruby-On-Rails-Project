Rails.application.routes.draw do
  root "home#index"
  get "myfriends" => "gallery#mine", as: :my_friends
  get "friend/:id" => "gallery#show", as: :friend
  get "newfriend" => "gallery#new", as: :new_friend
  post "createfriend" => "gallery#create", as: :create_friend
  get "editfriend/:id" => "gallery#edit", as: :edit_friend
  patch "updatefriend/:id" => "gallery#update", as: :update_friend
  delete "deletefriend/:id" => "gallery#destroy", as: :delete_friend
  get "search" => "gallery#search", as: :search_friends
  get "friends" => "gallery#friends", as: :friends   
  
  resources :friends
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
