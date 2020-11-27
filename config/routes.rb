Rails.application.routes.draw do
  root to: 'home#index'
  resources :events

  resources :users
  resources :user_sessions

  get 'mypage' => 'mypage#index'
  get 'login' => 'user_sessions#new'
  post 'logout' => 'user_sessions#destroy'
end
