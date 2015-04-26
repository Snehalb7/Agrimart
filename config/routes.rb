Rails.application.routes.draw do
 
    root to:  'signups#new'
    resources :farmers
    resources :traders
    resources :signups
    
end
