Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :user, only: [:create, :show]
      post 'login', to: 'user#login'
      resources :post, only: [:create, :update, :show]
      resources :comment, only: [:create]
      resources :like, only: [:create]
    end
  end
end
