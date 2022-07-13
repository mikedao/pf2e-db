Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :conditions, only: [:index, :show]
    end
  end

  root 'welcome#index'
  
  resources :conditions, only: [:index, :show]
end
