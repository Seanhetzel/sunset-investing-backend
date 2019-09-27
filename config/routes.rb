Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :investors, :holdings, :properties
      post '/login', to: 'auth#create'
      get '/profile', to: 'investors#profile'
    end
  end
end
