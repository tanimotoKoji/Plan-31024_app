Rails.application.routes.draw do
  devise_for :users
  
  devise_scope :users do
    get '/users', to: redirect("/users/sign_up")
  end

  root to: "posts#index"

  resources :posts do
    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
  end    

  resources :posts do
    resources :evaluations, only: [:index, :show, :create]
  end
  
  
end
