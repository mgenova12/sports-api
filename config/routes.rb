Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get '/baseball' => 'baseballs#index'
      get '/baseball/:id' => 'baseballs#show'
      
      get '/football' => 'footballs#index'
      get '/football/:id' => 'footballs#show'

      get '/basketball' => 'basketballs#index'
      get '/basketball/:id' => 'basketballs#show'
    end
  end


end
