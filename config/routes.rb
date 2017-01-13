Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :posts
  root "static_pages#index"
  get '/history' , to: 'static_pages#history'
  get '/gallery' , to: 'static_pages#gallery'
  get '/schedule' , to: 'static_pages#schedule'
  get '/contact' , to: 'static_pages#contact'
  get '/index' , to:'static_pages#index'
end
