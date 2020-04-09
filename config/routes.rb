Rails.application.routes.draw do
  
  resources :volunteers, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :organizations, only: [:index, :show, :new, :create]
  resources :tasks, only: [:index, :show, :new, :create]
  resources :assignments, only: [:index, :show, :new, :create]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
