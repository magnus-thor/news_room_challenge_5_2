Rails.application.routes.draw do
  devise_for :users
  resources :articles, only: [:new, :create, :show, :index]

  root controller: :articles, action: :index
end
