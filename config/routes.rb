Rails.application.routes.draw do

  root 'static_pages#home'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'test/:id' => 'tests#new'
  post 'tests/:id' => 'tests#create'

  resources :users
  resources :quizzes
end
