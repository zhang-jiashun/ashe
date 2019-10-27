Rails.application.routes.draw do
  root 'notes#index'

  resources :notes, only: [:index, :show]

  namespace :admin do
    resources :notes
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
