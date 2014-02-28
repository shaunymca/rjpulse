Myapp::Application.routes.draw do
  resources :answer_options

  resources :answer_types


  resources :questions do
    resources :answers
  end
  
  resources :answers

  resources :surveys

  authenticated :user do
    root :to => 'surveys#index'
  end
  devise_scope :user do
    get "/" => "devise/registrations#new"
  end

  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end