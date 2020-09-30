Rails.application.routes.draw do
  resources :tweets
  root 'tweets#index'
  get 'tweets/index'
  get 'tweets/new', to: 'tweets#new' 
  post 'tweets', to: 'tweets#create'
  delete 'tweets/:id', to: 'tweets#destroy'
  get 'tweets/:id', to: 'tweets#show'
  get 'tweets/:id/edit', to: 'bookmark#edit'
  patch 'tweets/:id', to: 'bookmark#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
