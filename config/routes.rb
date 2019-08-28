Rails.application.routes.draw do
  # get 'reviews/index'
  # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: 'new_restaurant_review'
  # post 'restaurants/:restaurant_id/reviews', to: 'reviews#create', as: 'restaurant_reviews'
  # expect(:get => "/restaurants").to route_to("restaurants#index")
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/new'
  # get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  # post 'restaurants', to: 'restaurants#create'

  resources :restaurants, only: [ :index, :new, :create , :show] do
    resources :reviews, only: [ :index, :new, :create ]
  end
  # expect(:get => "/restaurants/1/reviews/new").to route_to(controller: "reviews", action: "new", restaurant_id: "1")
  # expect(:post => "/restaurants/1/reviews").to route_to(controller: "reviews", action: "create", restaurant_id: "1")
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
