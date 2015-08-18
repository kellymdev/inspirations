Rails.application.routes.draw do
  root to: 'categories#index'

  get '/quotes/dreams', to: 'quotes#dreams_random', as: :dreams_path
end
