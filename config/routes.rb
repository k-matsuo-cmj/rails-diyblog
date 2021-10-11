Rails.application.routes.draw do
  get 'comments/new'
  devise_for :users
  root to: "home#index"
  resource :blog do
    get '/', to: "home#index"
    resources :blogs, only: [:index, :show] do
      resources :comments, only: [:new, :create]
    end
    resources :bloggers, only: [:index, :show]
  end
end
