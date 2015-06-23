Rails.application.routes.draw do

  devise_for :users
  devise_for :admins

  get "home", to: "home#index"

  root "home#index"

  resources :albums, only: [:index, :show]

  resources :events, only: [:index, :show]

  resources :discounts, only: [:index, :show] do
    resources :coupons, only: [:index, :new, :create]
  end

  scope :my do
    resources :coupons
  end

  namespace :blog do
    get "/", to: "articles#index"

    resources :articles, only: [:index, :show]
      # resources :comments, only: [:create]
  end

  namespace :admin do
    get "/", to: "base#home", as: "home"

    resources :sliders
    resources :articles
    resources :events

    resources :discounts do
      resources :coupons
    end

    resources :albums do
      resources :photos, except: [:edit, :update]
    end

  end

end
