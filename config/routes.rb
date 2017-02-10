Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks", registrations: 'registrations' }
  root 'pages#index'

  resources :users, only: :show

  resources :listings, only: [:new, :create, :show]

  get 'manage-listing/:id/basics' => 'listings#basics', as: 'manage_listing_basics'
end
