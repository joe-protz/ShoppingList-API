# frozen_string_literal: true

Rails.application.routes.draw do

  resources :lists, except: %i[new edit] 
  # RESTful routes
  resources :examples, except: %i[new edit show]
  
  # Custom routes
  get '/items/:list_id/:id' => 'items#show'
  get '/items/:list_id' => 'items#index'
  post '/items/:list_id' => 'items#create'
  delete '/items/:list_id/:id' => 'items#destroy'
  patch  '/items/:list_id/:id' => 'items#update'

  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
