Rails.application.routes.draw do
  namespace :public do
    get 'homes/top'
    get 'homes/search'
    get 'homes/tag_select'
  end
  namespace :public do
    get 'visits/create'
    get 'visits/destroy'
  end
  namespace :public do
    get 'favorites/create'
    get 'favorites/destroy'
  end
  namespace :public do
    get 'posts/new'
    get 'posts/create'
    get 'posts/update'
    get 'posts/show'
    get 'posts/index'
    get 'posts/edit'
    get 'posts/destroy'
  end
  namespace :public do
    get 'users/edit'
    get 'users/update'
    get 'users/unsubscribe'
    get 'users/withdraw'
    get 'users/show'
  end
  namespace :admin do
    get 'homes/top'
  end
  namespace :admin do
    get 'tags/index'
    get 'tags/create'
    get 'tags/destroy'
  end
  namespace :admin do
    get 'users/index'
    get 'users/show'
    get 'users/edit'
    get 'users/update'
  end
  namespace :admin do
    get 'posts/index'
    get 'posts/show'
    get 'posts/update'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :posts, only: [:index, :show, :update]
    resources :users, only: [:index, :show, :edit, :update]
    resources :tags, only: [:index, :create, :destroy]
  end
  get 'admin' => 'admin/homes#top', as:'top'

  scope module: :public do
    get 'users/information/edit' => 'users#edit'
    patch 'users/information' => 'users#update'
    get 'users/unsubscribe' => 'users#unsubscribe'
    patch 'users/withdraw' => 'users#withdraw'
    resources :users, only: [:show]

    resources :posts do
      resource :favorites, only: [:create, :destroy]
      resource :visits, only: [:create, :destroy]
    end

    root to: 'homes#top'
    get 'search' => 'homes#search', as:'search'
    get 'tag_select' => 'homes#tag_select', as:'tag_select'
  end

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }
  devise_for :users,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
end
