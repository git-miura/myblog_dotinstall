Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :posts

  #commentsと紐づける形 doをつける

  resources :posts do
    #使うルーティングはcreateとdestroyのみなので、onlyでそれのみにする
    resources :comments, only: [:create, :destroy]
  end

  root "posts#index"
end
