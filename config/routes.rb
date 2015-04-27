Rails.application.routes.draw do
 
    root to:  'sessions#new'
    resources :farmers
    resources :traders
    resources :signups
    resources :sessions
    
   
    
end
