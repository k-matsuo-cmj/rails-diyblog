Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resource :blog do
    get '/', to: "home#index"
    resources :blogs, only: [:index, :show]
    resources :bloggers, only: [:index, :show]
  end
end
