Rails.application.routes.draw do
  resource :sessions, only: [:create]

  root 'welcome#index'
  resources :users
  resources :trackers
  resources :journals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
