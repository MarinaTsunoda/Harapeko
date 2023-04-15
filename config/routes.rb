Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :posts, only: [:index, :show, :update]
    resources :users, only: [:index, :show, :edit, :update]
    resources :tags, only: [:index, :create, :destroy]
  end
  get 'admin' => 'admin/homes#top', as:'top'

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }
  devise_for :users,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end
  
  scope module: :public do
    get 'users/information/edit' => 'users#edit'
    patch 'users/information' => 'users#update'
    get 'users/my_page' => 'users#my_page'
    get 'users/unsubscribe' => 'users#unsubscribe'
    patch 'users/withdraw' => 'users#withdraw'
    resources :users, only: [:show]

    resources :posts do
      resource :favorites, only: [:create, :destroy,]
      resource :visits, only: [:create, :destroy]
    end

    root to: 'homes#top'
    get 'search' => 'homes#search', as:'search'
    get 'tag_select' => 'homes#tag_select', as:'tag_select'
    
  end
end
