# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :demo, only: %i[show]

  authenticated :user do
    root to: 'home#index', as: :authenticated_root
  end

  root to: 'static_pages#welcome'
end
