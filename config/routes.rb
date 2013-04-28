Zitter::Application.routes.draw do
  get "tweets/index"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users do
    resource :tweets
  end
end