Rails.application.routes.draw do
  resources :feeds do
    collection do #member doを使うと、idを必要とする固有のルーティングを生成できます。
      post :confirm
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
end
