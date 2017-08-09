Rails.application.routes.draw do

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end

  namespace :admin do
    resources :restaurants, only: [:update, :edit, :destroy]
  end
end
