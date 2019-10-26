Rails.application.routes.draw do
  namespace :admin do
    resources :notes, only: [:index, :new, :create, :edit, :update, :show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
