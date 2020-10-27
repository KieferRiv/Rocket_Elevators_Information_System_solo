Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index', to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'

  get 'home/residential', to: 'home#residential'
  get 'home/commercial', to: 'home#commercial'
  get 'home/quote', to: 'home#quote'








end
