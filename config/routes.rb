Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'home#index'  
  get '/die' ,  to: 'dice#roll'
  get '/time' ,  to: 'time#currenttime'
  get '/math/root/:x', to: 'math#root'
  get '/math/add', to: 'math#add'
  post '/math/compute', to: 'math#compute'
   get '/math/ransum', to: 'math#get_ransum'
    post '/math/ransum', to: 'math#post_ransum'
end
