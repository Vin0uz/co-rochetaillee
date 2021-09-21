Rails.application.routes.draw do
  resources :task_lists
  get 'home/index'
  root 'home#index'

  resources :slots, only: [:new, :create]
end
