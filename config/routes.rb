Rails.application.routes.draw do
 
    root to:  'sessions#new'
    resources :farmers
    resources :traders
    resources :signups
    resources :sessions
    resources :profiles
    resources :posts
    resources :requests
    
    get "" => "sessions#new" , :as => "log_in"
    get "log_out" => "sessions#destroy" , :as => "log_out"
       
end
