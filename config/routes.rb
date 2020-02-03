Rails.application.routes.draw do
  devise_for :admins
  root to: "posts#index"
  devise_for :users
  resources :posts, only: [:index, :show]

  namespace :login do
    resources :posts

    namespace :admin do
    resources :posts
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
