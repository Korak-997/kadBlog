Rails.application.routes.draw do
  resources :comments
  resources :posts do 
    get "like", on: :member
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "posts#index"
end
