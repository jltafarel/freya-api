Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  get 'users/me', to: 'users#me'
  resources :users, only: [:create, :index, :show]
end
