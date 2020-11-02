Rails.application.routes.draw do
  
  devise_for :admins, path: 'admins', controllers: { sessions: "admins/sessions"}
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Blazer::Engine, at: "blazer"

  get 'home/index', to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'

  get 'home/residential', to: 'home#residential'
  get 'home/commercial', to: 'home#commercial'
  get 'quotes/new', to: 'quotes#new'

  post 'quotes/new', to: 'quotes#create'

  get 'leads', to: 'leads#new'
  post '', to: 'leads#create'

  get 'admins/sign_in', to: 'sessions#new'
  
  resources :quotes


  resources :leads


end
