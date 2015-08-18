Rails.application.routes.draw do
  root to: 'categories#index'

  get '/quotes/random/:category', to: 'quotes#random', as: :random_quote_path
end
