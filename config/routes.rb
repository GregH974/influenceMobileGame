Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  devise_for :users
  root to: "home#index"

  # TODO : to complete template
  get   '404',                              to: 'errors#not_found',               as: 'not_found'
  get   '503',                              to: 'errors#forbidden',               as: 'forbidden'
  get   '500',                              to: 'errors#internal_server_error',   as: 'internal_server_error'
end
