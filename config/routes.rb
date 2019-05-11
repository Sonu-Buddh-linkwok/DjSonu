Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions'    }
  root 'welcome#index'
  # root to: 'video#index'
  get 'welcome/demo'
  get 'welcome/index'
  post 'welcome/subscriber_request'
  
  resources :videos, only: [:index, :new, :create]
end
