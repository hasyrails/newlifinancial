Rails.application.routes.draw do
  root to: 'home#index'
  resources :events
  resources :top

  resources :users
  resources :user_sessions

  get 'login' => 'user_sessions#new'
  post 'logout' => 'user_sessions#destroy'
end
