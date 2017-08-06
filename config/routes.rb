Rails.application.routes.draw do

  get 'pages_home'=> 'pages#home'
  get 'pages_landing'=> 'pages#landing'

   authenticated :user do
    root 'pages#home', as: :authenticated_root
  end

  root :to => "pages#landing"

resources :sports, only: :index

resources :countries, only: :index do
  resources :games, only: :index
end

# resources :users

resources :games, only: [:show, :top] do

  member do
    post :home
    post :away
  end

  resources :requests, only: [:index, :new, :create, :destroy]
end

  resources :requests, only: :index do

    member do
      post :display
    end

    resources :matches, only: [:new, :create]
  end

  resources :matches, only: [:index, :destroy]


  devise_for :users
  resources :users do
    resources :rbfriends, only: [:new, :destroy]
  end


  resources :rbfriends, only: :index do
    resources :betfriends, only: [:new, :destroy]
  end

  resources :betfriends, only: :index

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


   # devise_for :users, controllers: {
   #      sessions: 'users/sessions'
   #    }

# devise_for :users,
#     controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' },
#     path: "sessions"
end
