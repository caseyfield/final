Rails.application.routes.draw do

  resources :categories
  resources :cities
  resources :conditions
  resources :items
  resources :sessions
  resources :users

  root to: "categories#index"

end
