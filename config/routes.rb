# frozen_string_literal: true

AuthenticationEngine::Engine.routes.draw do
  post 'sign_up', to: 'users#create'
  get 'sign_up', to: 'users#new'

  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'login', to: 'sessions#new'
end
