Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'home/index'
  root :to => "splash#index"
  get "/category/", to: "category#index", as: "all_category"
  get "/category/show/:id", to: "category#show", as: "category_show"
  get "/category/new", to: "category#new", as: "new_category"
  post '/category/create', to: 'category#create', as: "create_category"
  get "/transaction/", to: "transaction#index", as: "all_transaction"
  get "/transaction/show/:id", to: "transaction#show", as: "transaction_show"
  get "/transaction/new", to: "transaction#new", as: "new_transaction"
  post '/transaction/create', to: 'transaction#create', as: "create_transaction"
  # Defines the root path route ("/")
  # root "articles#index"
end
