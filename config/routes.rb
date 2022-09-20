Rails.application.routes.draw do
  root to: "lists#index"
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: :destroy
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "lists", to: "lists#index"
  # get "lists/new", to: "lists#new"
  # post "lists", to: "lists#create"
  # get "lists/:id", to: "lists#show"



  # Defines the root path route ("/")
  # root "articles#index"
end
