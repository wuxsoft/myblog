require 'sidekiq/web'

Rails.application.routes.draw do
  get 'replies/index'

  namespace :admin do
    resources :members
    resources :articles
    resources :roles
    resources :replies
    resources :cases
    root to: "members#index"
  end

  resources :articles
  devise_for :members, controllers: { registrations: "members/registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "articles#index"
end
