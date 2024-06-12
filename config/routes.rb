Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  devise_for :users
  root to: 'home#index'

  namespace :players do
    resource :profile, only: %i[edit update], controller: 'profiles'
    resource :offer, only: [:edit], controller: 'offers' do
      member do
        post :claim, to: 'offers#claim'
      end
    end
  end
end
