Rails.application.routes.draw do
  root 'main#index'

  get 'auth/logout' => 'auth#logout'
  get 'auth/failure' => 'auth#failure'
  get 'auth/:provider/callback' => 'auth#callback'

  get 'login' => 'session#new'
  post 'login' => 'session#create'
  delete 'logout' => 'session#destroy'

  get 'signup' => 'signup#new'
  post 'signup' => 'signup#create'
end
