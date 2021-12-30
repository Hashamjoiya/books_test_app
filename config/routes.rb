# frozen_string_literal: true

Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
  concern :tagging do
    collection do
      get :tagging
      post :update_tags
    end
  end

  root to: 'books#index'
  resources :books do
    concerns :tagging
  end
  resources :tags
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
