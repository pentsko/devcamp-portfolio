Rails.application.routes.draw do
  resources :portfolios

 
  get 'about-me', to: 'pages#about'
  get 'contoct', to: 'pages#contoct'

  resources :blogs

  root to: 'pages#home'
end
