  Rails.application.routes.draw do
  get 'group_users/new'
  get 'group_users/edit'
  get 'group_users/index'
  get 'groups/new'
  get 'groups/index'
  get 'groups/edit'
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  resources :users do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings' 
    get 'followers' => 'relationships#followers', as: 'followers' 
    
  end

  get 'search' => 'searches#search'
end

