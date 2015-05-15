Rails.application.routes.draw do
 
 resources :users
 resources :zip_codes

 root to: "users#index"

end
