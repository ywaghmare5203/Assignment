Rails.application.routes.draw do
  root to: 'welcome#index'
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :user, only: [:create, :show, :index]
      post 'login', to: 'user#login'
      resources :post, only: [:create, :index, :show]
      resources :comment, only: [:create]
      resources :like, only: [:create]
    end
  end
end
