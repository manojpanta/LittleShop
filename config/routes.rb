Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :items
  resources :merchants
end
