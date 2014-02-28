Myapp::Application.routes.draw do
  resources :answer_options

  resources :answer_types

  resources :answers

  resources :questions

  resources :surveys

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end