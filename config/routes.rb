Rails.application.routes.draw do
  get 'restaurants/index'
  get 'restaurants/show'
  get 'restaurants/create'
  get 'restaurants/new'
  get 'restaurant/index'
  get 'restaurant/show'
  get 'restaurant/create'
  get 'restaurant/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
end
