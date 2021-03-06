Rails.application.routes.draw do

namespace :admin do
  get 'dashboard/main'
  get 'dashboard/user'
  get 'dashboard/blog'
end


  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

 
  get 'about-me', to: 'pages#about'
  get 'contoct', to: 'pages#contoct'

  
  resources :blogs do 
    member do 
      get :toggle_status
    end
  end
  resources :posts
  get 'posts/*missing', to: 'posts#missing'

  get 'query/:else/:another', to: 'pages#something' 
  get 'query/:else', to: 'pages#something' 

  root to: 'pages#home'
end
