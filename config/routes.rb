Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      get '/baseball' => 'baseballs#index'
      get '/baseball/:id' => 'baseballs#show'
    end
  end

	get '/players' => 'players#index'

end
