Rails.application.routes.draw do
  devise_for :admins, controllers: {
    registrations: "admins/registrations",
    sessions: "admins/sessions",
    passwords: "admins/passwords",
    confirmations: "admins/confirmations"
  }
  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions",
    passwords: "users/passwords",
    confirmations: "users/confirmations"
  }
  root to: "products#index"
  resources :products do
    resources :purchases
  end

  namespace :admins do
    root to: 'dashboards#index'
  end
  
end
