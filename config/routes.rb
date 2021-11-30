Rails.application.routes.draw do
  get '/auth/logindotgov/callback' => 'users/omniauth#callback'

  root to: "home#index"
end
