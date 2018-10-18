Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"
  resources :tweets, only: [:index, :show, :new, :create, :destroy, :edit, :update] do
  resources :comments, only: [:create]
  end
  resource :users, only: [:show]
end
