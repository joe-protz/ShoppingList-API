# frozen_string_literal: true

Rails.application.routes.draw do

  resources :lists, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit show]
  resources :items, except: %i[new edit show]
  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
