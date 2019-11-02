Rails.application.routes.draw do
  root 'notes#index'

  resources :notes, only: [:index, :show] do
    resources :comments, only: [:create]
  end

  namespace :admin do
    resources :notes
    resources :sessions

    get 'login' => 'sessions#new'
    post 'login' => 'sessions#create'
    get 'logout' => 'sessions#destroy'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
