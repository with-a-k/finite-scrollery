Rails.application.routes.draw do
  # get 'auth/tumblr', as: :login
  get 'sessions/destroy', as: :logout
  get 'auth/tumblr/callback' => "sessions#create"
  get 'posts/new', as: :post
  post 'posts/new' => "posts#create"
  root 'welcome#show'
end
