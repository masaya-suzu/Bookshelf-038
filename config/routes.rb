Rails.application.routes.draw do
  devise_for :users
  get 'books/index'
  root to: "books#index"
  resources :books, only: [:index, :new, :create] do
    collection do
      get 'search'
    end
  end
  resources :users, only: [:edit, :update]
end
