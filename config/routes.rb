Myapp::Application.routes.draw do
  resources :answer_options

  resources :answer_types


  resources :questions do
    resources :answers
  end
  
  resources :answers

  resources :surveys

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end