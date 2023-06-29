Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :posts, only: [:index, :show, :destroy]
    resources :users, only: [:index, :show, :edit, :update]
    resources :tags, only: [:index, :create, :destroy, :update]
    resources :tag_genres, only: [:create, :destroy, :update]
  end

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }
  get 'admin' => 'admin/homes#top', as:'top'
  devise_for :users,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'public/sessions#guest_sign_in'
  end

  scope module: :public do
    get 'users/information/edit' => 'users#edit'
    patch 'users/information' => 'users#update'
    get 'users/my_page' => 'users#my_page'
    patch 'users/withdraw' => 'users#withdraw'
    get 'shops/search' => 'shops#search'
    post 'posts/new'
    get 'users/unsubscribe' => 'users#unsubscribe'
    resources :users, only: [:show, :edit, :update]

    resources :posts do
      collection do
        get 'search'
        get 'favorite'
        get 'tag_search'
      end
    end
    post 'favorite/:id' => 'favorites#create', as: 'create_favorite'
    delete 'favorite/:id' => 'favorites#destroy', as: 'destroy_favorite'
    root to: 'homes#top'

  end
end
