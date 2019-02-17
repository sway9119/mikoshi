Rails.application.routes.draw do
  root to: 'home#index'
  # resources :hulus
  get '/hulus/index', to: 'hulus#index'
end
