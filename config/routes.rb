Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :show]
  end

  # A visitor can see the list of all restaurants (index)
  # GET "restaurants"

  # A visitor can add a new restaurant, and be redirected to the show view of that new restaurant (new, create).
  # GET "restaurants/new"
  # POST "restaurants"

  # A visitor can see the details of a restaurant, with all the reviews related to the restaurant (show).
  # GET "restaurants/38"

  # A visitor can add a new review to a restaurant (new, create)
  # GET "restaurants/38/reviews/new"
  # POST "restaurants/38/reviews"
end
