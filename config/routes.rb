Rails.application.routes.draw do
  resources :posts
  devise_for :users
  get 'pages/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  authenticated :user do
    root "posts#index", as: :authenticated_user_root
  end
  
  root 'pages#home'
end
