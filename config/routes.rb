Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get :top # get 'restaurants/top', to: 'restaurants#top', as: 'top_restaurants'
    end
    member do
      get :chef
    end
    resources :reviews, only: [ :new, :create ]
  end
  resources :reviews, only: [ :destroy ]
end

