Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root 'home#index'

  #mypouch
  get '/mypouch' => 'mypouch#index'
  post '/mypouch/update/:id' => 'mypouch#update'
  get '/mypouch/survey' => "mypouch#survey"

  # reviews
  get 'reviews/create'
  get 'reviews/destroy'

  #user & userspec
  resources :userspecs
  devise_for :users

  # manuals
  resources :manuals do
    member do
      put "like", to: "manuals#upvote"
    end

    resources :comments
  end
  get 'manuals/category/:category' => "manuals#category"

  # custom
  get 'custom' => "custom#index"
  get 'custom/category/:category' => "custom#category"

  # ranking
  get 'ranking/index' => 'ranking#index'
  get 'ranking/category/:category' => "ranking#category"

  # shopping
  get 'shopping/index' => 'shopping#index'
  get 'shopping/:order' => 'shopping#order'
  get 'shopping/category/:category' => 'shopping#category'

  # product
  get 'products/category/:category' => "products#category"
  resources :products do
    resources :reviews
  end
end
