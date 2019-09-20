Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :investors, :holdings, :properties
    end
  end
end
